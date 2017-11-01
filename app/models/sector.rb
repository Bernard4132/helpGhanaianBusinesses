class Sector < ApplicationRecord
	belongs_to :article
	belongs_to :section
end
