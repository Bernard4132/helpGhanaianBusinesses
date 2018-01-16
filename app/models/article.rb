class Article < ApplicationRecord
	  resourcify
	  extend FriendlyId
      friendly_id :title, use: :slugged
      has_many :photos
	  mount_uploader :articleimage, ArticleimageUploader
	  has_many :sectors
	  has_many :sections, through: :sectors
end
