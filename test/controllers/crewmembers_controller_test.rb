require 'test_helper'

class CrewmembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crewmember = crewmembers(:one)
  end

  test "should get index" do
    get crewmembers_url
    assert_response :success
  end

  test "should get new" do
    get new_crewmember_url
    assert_response :success
  end

  test "should create crewmember" do
    assert_difference('Crewmember.count') do
      post crewmembers_url, params: { crewmember: { address: @crewmember.address, email: @crewmember.email, name: @crewmember.name, phone: @crewmember.phone } }
    end

    assert_redirected_to crewmember_url(Crewmember.last)
  end

  test "should show crewmember" do
    get crewmember_url(@crewmember)
    assert_response :success
  end

  test "should get edit" do
    get edit_crewmember_url(@crewmember)
    assert_response :success
  end

  test "should update crewmember" do
    patch crewmember_url(@crewmember), params: { crewmember: { address: @crewmember.address, email: @crewmember.email, name: @crewmember.name, phone: @crewmember.phone } }
    assert_redirected_to crewmember_url(@crewmember)
  end

  test "should destroy crewmember" do
    assert_difference('Crewmember.count', -1) do
      delete crewmember_url(@crewmember)
    end

    assert_redirected_to crewmembers_url
  end
end
