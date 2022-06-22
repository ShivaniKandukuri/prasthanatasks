require 'test_helper'

class LeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leader = leaders(:one)
  end

  test "should get index" do
    get leaders_url
    assert_response :success
  end

  test "should get new" do
    get new_leader_url
    assert_response :success
  end

  test "should create leader" do
    assert_difference('Leader.count') do
      post leaders_url, params: { leader: { age: @leader.age, first_name: @leader.first_name, last_name: @leader.last_name } }
    end

    assert_redirected_to leader_url(Leader.last)
  end

  test "should show leader" do
    get leader_url(@leader)
    assert_response :success
  end

  test "should get edit" do
    get edit_leader_url(@leader)
    assert_response :success
  end

  test "should update leader" do
    patch leader_url(@leader), params: { leader: { age: @leader.age, first_name: @leader.first_name, last_name: @leader.last_name } }
    assert_redirected_to leader_url(@leader)
  end

  test "should destroy leader" do
    assert_difference('Leader.count', -1) do
      delete leader_url(@leader)
    end

    assert_redirected_to leaders_url
  end
end
