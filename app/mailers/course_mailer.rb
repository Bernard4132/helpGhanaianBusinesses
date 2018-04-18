class CourseMailer < ApplicationMailer
	default from: "Bernard@helpbusinessesonline.com"

  def lesson_one(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 1 out of 7] Why / How do you market your business? Gain Perspective!"
  end

  def lesson_two(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 2 out of 7] Marketing that leads to a sale."
  end

  def lesson_three(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 3 out of 7] Creating an Audience for your Business (The multi-million/billion strategy)"
  end

  def lesson_four(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 4 out of 7] A new approach to marketing"
  end

  def lesson_five(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 5 out of 7] Actionable Assets for a Successful Online Marketing and Audience Building"
  end

  def lesson_six(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 6 out of 7] Set yourself up for Success!"
  end

  def lesson_seven(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 7 out of 7] Maximizing your Sales potential to disproportionately Scale your Business."
  end

  def lesson_eight(course)
  	@course = course
  	mail to: course.email , subject: "[Afterthoughts] Advertising that brings value to your customer"
  end

  def lesson_nine(course)
  	@course = course
  	mail to: course.email , subject: "[Take Action Today] What's next for you and your business?"
  end

  def lesson_ten(course)
    @course = course
    mail to: course.email , subject: "[The right plan for your business] What's next for you and your business? Start Acting Now!"
  end

end
