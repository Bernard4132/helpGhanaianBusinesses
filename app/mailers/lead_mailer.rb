class LeadMailer < ApplicationMailer
	default from: "HelpBusinessesOnline@helpbusinessesonline.com"

  def lead_message(lead)
  	@lead = lead
  	mail to: lead.email , subject: "Welcome #{lead.name}! We will help Grow Your Business"
  end

  def lead_message2(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

  def lead_message3(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

  def lead_message4(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

  def lead_message5(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

  def lead_message6(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

  def lead_message7(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

  def lead_message8(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

  def lead_message9(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end

end
