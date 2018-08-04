class Boat < ApplicationRecord
	has_attached_file :avatar, styles: {medium: "300x225", thumb: "120x90"}
	validates_attachment :avatar,
                     content_type: { content_type: /\Aimage\/.*\z/ }
end
