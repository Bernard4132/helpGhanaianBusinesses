require 'test_helper'

class DreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dream = dreams(:one)
  end

  test "should get index" do
    get dreams_url
    assert_response :success
  end

  test "should get new" do
    get new_dream_url
    assert_response :success
  end

  test "should create dream" do
    assert_difference('Dream.count') do
      post dreams_url, params: { dream: { dreamaddinfo: @dream.dreamaddinfo, dreambudget: @dream.dreambudget, dreameremail: @dream.dreameremail, dreamername: @dream.dreamername, dreamerphone: @dream.dreamerphone, dreamtype: @dream.dreamtype } }
    end

    assert_redirected_to dream_url(Dream.last)
  end

  test "should show dream" do
    get dream_url(@dream)
    assert_response :success
  end

  test "should get edit" do
    get edit_dream_url(@dream)
    assert_response :success
  end

  test "should update dream" do
    patch dream_url(@dream), params: { dream: { dreamaddinfo: @dream.dreamaddinfo, dreambudget: @dream.dreambudget, dreameremail: @dream.dreameremail, dreamername: @dream.dreamername, dreamerphone: @dream.dreamerphone, dreamtype: @dream.dreamtype } }
    assert_redirected_to dream_url(@dream)
  end

  test "should destroy dream" do
    assert_difference('Dream.count', -1) do
      delete dream_url(@dream)
    end

    assert_redirected_to dreams_url
  end
end
