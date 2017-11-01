class StaticPagesController < ApplicationController

def home
@dream = Dream.new	
end

def helpbusinessesgrow
@dream = Dream.new
end

def homebig
	@lead = Lead.new
end

def websites
  @dream = Dream.new
  @lead = Lead.new	
end

def digitalmarketing
	@potential = Potential.new
	@lead = Lead.new
end

def seo
	@potential = Potential.new
	@lead = Lead.new
end

def socialandemailmarketing
	@potential = Potential.new
	@lead = Lead.new
end

def aboutus
	@potential = Potential.new
	@lead = Lead.new
end

end