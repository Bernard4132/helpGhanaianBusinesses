require 'test_helper'

class ExpertleadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expertlead = expertleads(:one)
  end

  test "should get index" do
    get expertleads_url
    assert_response :success
  end

  test "should get new" do
    get new_expertlead_url
    assert_response :success
  end

  test "should create expertlead" do
    assert_difference('Expertlead.count') do
      post expertleads_url, params: { expertlead: { email: @expertlead.email, name: @expertlead.name, phone: @expertlead.phone } }
    end

    assert_redirected_to expertlead_url(Expertlead.last)
  end

  test "should show expertlead" do
    get expertlead_url(@expertlead)
    assert_response :success
  end

  test "should get edit" do
    get edit_expertlead_url(@expertlead)
    assert_response :success
  end

  test "should update expertlead" do
    patch expertlead_url(@expertlead), params: { expertlead: { email: @expertlead.email, name: @expertlead.name, phone: @expertlead.phone } }
    assert_redirected_to expertlead_url(@expertlead)
  end

  test "should destroy expertlead" do
    assert_difference('Expertlead.count', -1) do
      delete expertlead_url(@expertlead)
    end

    assert_redirected_to expertleads_url
  end
end
