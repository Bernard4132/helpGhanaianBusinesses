require 'test_helper'

class FacebookadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facebookad = facebookads(:one)
  end

  test "should get index" do
    get facebookads_url
    assert_response :success
  end

  test "should get new" do
    get new_facebookad_url
    assert_response :success
  end

  test "should create facebookad" do
    assert_difference('Facebookad.count') do
      post facebookads_url, params: { facebookad: { budget: @facebookad.budget, email: @facebookad.email, name: @facebookad.name, phonenumber: @facebookad.phonenumber, resultsywant: @facebookad.resultsywant } }
    end

    assert_redirected_to facebookad_url(Facebookad.last)
  end

  test "should show facebookad" do
    get facebookad_url(@facebookad)
    assert_response :success
  end

  test "should get edit" do
    get edit_facebookad_url(@facebookad)
    assert_response :success
  end

  test "should update facebookad" do
    patch facebookad_url(@facebookad), params: { facebookad: { budget: @facebookad.budget, email: @facebookad.email, name: @facebookad.name, phonenumber: @facebookad.phonenumber, resultsywant: @facebookad.resultsywant } }
    assert_redirected_to facebookad_url(@facebookad)
  end

  test "should destroy facebookad" do
    assert_difference('Facebookad.count', -1) do
      delete facebookad_url(@facebookad)
    end

    assert_redirected_to facebookads_url
  end
end
