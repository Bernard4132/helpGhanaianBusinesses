class LeadMailer < ApplicationMailer
	default from: "HelpGhanaianBusinesses@helpghanaianbusinesses.com"

  def lead_message(lead)
  	@lead = lead
  	mail to: lead.email , subject: "You got hitched on some Goodness!"
  end
end
