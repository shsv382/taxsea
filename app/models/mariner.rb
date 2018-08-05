class Mariner < ApplicationRecord
	has_one :boat
	has_attached_file :avatar, styles: {medium: "150x200", thumb: "75x100"}
	validates_attachment :avatar,
                     content_type: { content_type: /\Aimage\/.*\z/ }
end
