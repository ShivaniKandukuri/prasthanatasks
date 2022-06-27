require 'test_helper'

class AddRestaurantReferenceToRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_restaurant_reference_to_rating = add_restaurant_reference_to_ratings(:one)
  end

  test "should get index" do
    get add_restaurant_reference_to_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_add_restaurant_reference_to_rating_url
    assert_response :success
  end

  test "should create add_restaurant_reference_to_rating" do
    assert_difference('AddRestaurantReferenceToRating.count') do
      post add_restaurant_reference_to_ratings_url, params: { add_restaurant_reference_to_rating: { Restaurant_id: @add_restaurant_reference_to_rating.Restaurant_id } }
    end

    assert_redirected_to add_restaurant_reference_to_rating_url(AddRestaurantReferenceToRating.last)
  end

  test "should show add_restaurant_reference_to_rating" do
    get add_restaurant_reference_to_rating_url(@add_restaurant_reference_to_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_restaurant_reference_to_rating_url(@add_restaurant_reference_to_rating)
    assert_response :success
  end

  test "should update add_restaurant_reference_to_rating" do
    patch add_restaurant_reference_to_rating_url(@add_restaurant_reference_to_rating), params: { add_restaurant_reference_to_rating: { Restaurant_id: @add_restaurant_reference_to_rating.Restaurant_id } }
    assert_redirected_to add_restaurant_reference_to_rating_url(@add_restaurant_reference_to_rating)
  end

  test "should destroy add_restaurant_reference_to_rating" do
    assert_difference('AddRestaurantReferenceToRating.count', -1) do
      delete add_restaurant_reference_to_rating_url(@add_restaurant_reference_to_rating)
    end

    assert_redirected_to add_restaurant_reference_to_ratings_url
  end
end
