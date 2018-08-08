class User < ApplicationRecord
	has_one :own_boat, :foreign_key => "mariner_id", :class_name => "Boat", dependent: :destroy
	has_attached_file :avatar, styles: {medium: "150x200", thumb: "75x100"}
	validates_attachment :avatar,
                     content_type: { content_type: /\Aimage\/.*\z/ }
    scope :mariners, -> { where(mariner: true) }
end
