require 'test_helper'

class MinistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minister = ministers(:one)
  end

  test "should get index" do
    get ministers_url
    assert_response :success
  end

  test "should get new" do
    get new_minister_url
    assert_response :success
  end

  test "should create minister" do
    assert_difference('Minister.count') do
      post ministers_url, params: { minister: { age: @minister.age, name: @minister.name, party: @minister.party } }
    end

    assert_redirected_to minister_url(Minister.last)
  end

  test "should show minister" do
    get minister_url(@minister)
    assert_response :success
  end

  test "should get edit" do
    get edit_minister_url(@minister)
    assert_response :success
  end

  test "should update minister" do
    patch minister_url(@minister), params: { minister: { age: @minister.age, name: @minister.name, party: @minister.party } }
    assert_redirected_to minister_url(@minister)
  end

  test "should destroy minister" do
    assert_difference('Minister.count', -1) do
      delete minister_url(@minister)
    end

    assert_redirected_to ministers_url
  end
end
