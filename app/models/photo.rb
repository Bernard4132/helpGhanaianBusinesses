class Photo < ApplicationRecord
	attachment :article_image
	belongs_to :article
end
