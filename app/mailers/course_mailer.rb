class CourseMailer < ApplicationMailer
	default from: "Bernard@helpbusinessesonline.com"

  def lesson_one(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 1] Why / How do you market your business? Gain Perspective!"
  end

  def lesson_two(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 2] Marketing that leads to a sale."
  end

  def lesson_three(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 3] Creating an Audience for your Business (The multi-million/billion strategy)"
  end

  def lesson_four(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 4] A new approach to marketing"
  end

  def lesson_five(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 5] Actionable Assets for a Successful Online Marketing and Audience Building"
  end

  def lesson_six(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 6] Set yourself up for Success!"
  end

  def lesson_seven(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 7] Maximizing your Sales potential to disproportionately Scale your Business."
  end

  def lesson_eight(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 8] Afterthoughts - Advertising that brings value to your customer"
  end

  def lesson_nine(course)
  	@course = course
  	mail to: course.email , subject: "[Email Lesson 9] What's next for you and your business? Start Acting Now!"
  end

end
