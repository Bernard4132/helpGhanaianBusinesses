require 'test_helper'

class EmailcoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emailcourse = emailcourses(:one)
  end

  test "should get index" do
    get emailcourses_url
    assert_response :success
  end

  test "should get new" do
    get new_emailcourse_url
    assert_response :success
  end

  test "should create emailcourse" do
    assert_difference('Emailcourse.count') do
      post emailcourses_url, params: { emailcourse: { businessname: @emailcourse.businessname, email: @emailcourse.email, name: @emailcourse.name, phonenumber: @emailcourse.phonenumber, resultsiwant: @emailcourse.resultsiwant, staff: @emailcourse.staff } }
    end

    assert_redirected_to emailcourse_url(Emailcourse.last)
  end

  test "should show emailcourse" do
    get emailcourse_url(@emailcourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_emailcourse_url(@emailcourse)
    assert_response :success
  end

  test "should update emailcourse" do
    patch emailcourse_url(@emailcourse), params: { emailcourse: { businessname: @emailcourse.businessname, email: @emailcourse.email, name: @emailcourse.name, phonenumber: @emailcourse.phonenumber, resultsiwant: @emailcourse.resultsiwant, staff: @emailcourse.staff } }
    assert_redirected_to emailcourse_url(@emailcourse)
  end

  test "should destroy emailcourse" do
    assert_difference('Emailcourse.count', -1) do
      delete emailcourse_url(@emailcourse)
    end

    assert_redirected_to emailcourses_url
  end
end
