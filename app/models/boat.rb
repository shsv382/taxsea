class Boat < ApplicationRecord
	has_attached_file :avatar, styles: {medium: "400x300", thumb: "120x90"}
	validates_attachment :avatar,
                     content_type: { content_type: /\Aimage\/.*\z/ }
    belongs_to :mariner
end
