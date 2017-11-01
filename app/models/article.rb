class Article < ApplicationRecord
	  extend FriendlyId
      friendly_id :title, use: :slugged
	  mount_uploader :articleimage, ArticleimageUploader
	  has_many :sectors
	  has_many :sections, through: :sectors
end
