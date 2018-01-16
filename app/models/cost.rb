class Cost < ApplicationRecord
	belongs_to :project
	resourcify

def day
  self.created_at.strftime("%D")
end

def week
  self.created_at.strftime("%W")
end

end
