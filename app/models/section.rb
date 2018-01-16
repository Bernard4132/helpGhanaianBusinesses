class Section < ApplicationRecord
	resourcify
	extend FriendlyId
    friendly_id :name, use: :slugged
	mount_uploader :sectionimage, SectionimageUploader
	has_many :sectors
	has_many :articles, through: :sectors
end
