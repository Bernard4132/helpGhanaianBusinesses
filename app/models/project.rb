class Project < ApplicationRecord
	resourcify
	has_many :costs
	has_many :timelines
	has_many :userprojects, :dependent => :destroy, :autosave => true
    has_many :users, through: :userprojects
    has_many :protypes, :dependent => :destroy, :autosave => true
    has_many :projecttypes, through: :protypes
    accepts_nested_attributes_for :costs, :allow_destroy => true
    default_scope -> { order('created_at DESC') }
end
