class RegistrationMailer < ApplicationMailer
	default from: "HelpGhanaianBusinesses@helpghanaianbusinesses.com"

  def register_message(user)
  	@user = user
  	mail to: user.email , subject: "Welcome here, enjoy some Goodness!"
  end
end
