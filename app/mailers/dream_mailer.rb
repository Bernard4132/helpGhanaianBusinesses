class DreamMailer < ApplicationMailer
	default from: "HelpGhanaianBusinesses@helpghanaianbusinesses.com"

  def dream_message(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "You got hitched on some Goodness!"
  end
end
