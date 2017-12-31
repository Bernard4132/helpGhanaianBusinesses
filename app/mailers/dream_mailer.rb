class DreamMailer < ApplicationMailer
  default from: "HelpGhanaianBusinesses@helpghanaianbusinesses.com"

  def dream_message(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] A website is your First and Great Step!"
  end

  def dream_message1(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] Why we think you need a Website."
  end

  def dream_message2(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] See how gets clients everyday with their website."
  end

  def dream_message3(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] Attracting customers to your website with your website."
  end

  def dream_message4(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] How these top Businesses in Ghana are making a killing with their website. (How to do same with a blueprint)"
  end

  def dream_message5(dream)
  	@dream = dream
  	mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] 20% of all our Website Plans! You know you need a website by now.."
  end

  def dream_message6(dream)
    @dream = dream
    mail to: dream.dreameremail , subject: "[Help Ghanaian Businesses] 20% of all our Website Plans! This is our last offer for you.."
  end

end
