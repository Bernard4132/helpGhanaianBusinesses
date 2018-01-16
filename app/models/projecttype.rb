class Projecttype < ApplicationRecord
	resourcify
	has_many :protypes, :dependent => :destroy, :autosave => true
    has_many :projects, through: :protypes
end
