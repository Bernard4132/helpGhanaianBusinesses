class DreamMailer < ApplicationMailer
  default from: "HelpGhanaianBusinesses@helpghanaianbusinesses.com"

  def dream_message(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] A website is your First and Great Step!"
  end
end
