require 'test_helper'

class PotentialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @potential = potentials(:one)
  end

  test "should get index" do
    get potentials_url
    assert_response :success
  end

  test "should get new" do
    get new_potential_url
    assert_response :success
  end

  test "should create potential" do
    assert_difference('Potential.count') do
      post potentials_url, params: { potential: { digim: @potential.digim, email: @potential.email, goal: @potential.goal, name: @potential.name, orgname: @potential.orgname, phone: @potential.phone, searcheo: @potential.searcheo, socem: @potential.socem, webs: @potential.webs } }
    end

    assert_redirected_to potential_url(Potential.last)
  end

  test "should show potential" do
    get potential_url(@potential)
    assert_response :success
  end

  test "should get edit" do
    get edit_potential_url(@potential)
    assert_response :success
  end

  test "should update potential" do
    patch potential_url(@potential), params: { potential: { digim: @potential.digim, email: @potential.email, goal: @potential.goal, name: @potential.name, orgname: @potential.orgname, phone: @potential.phone, searcheo: @potential.searcheo, socem: @potential.socem, webs: @potential.webs } }
    assert_redirected_to potential_url(@potential)
  end

  test "should destroy potential" do
    assert_difference('Potential.count', -1) do
      delete potential_url(@potential)
    end

    assert_redirected_to potentials_url
  end
end
