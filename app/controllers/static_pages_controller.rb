class StaticPagesController < ApplicationController

def home
@dream = Dream.new	
end

def helpbusinessesgrow
@dream = Dream.new
render layout: "lead"
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

def helpghanaianbusinessesleads
 @dream = Dream.new
 render layout: "lead"
end

def thankyoulead
  render layout: "lead"
end

end