require "application_system_test_case"

class AddRestaurantReferenceToRatingsTest < ApplicationSystemTestCase
  setup do
    @add_restaurant_reference_to_rating = add_restaurant_reference_to_ratings(:one)
  end

  test "visiting the index" do
    visit add_restaurant_reference_to_ratings_url
    assert_selector "h1", text: "Add Restaurant Reference To Ratings"
  end

  test "creating a Add restaurant reference to rating" do
    visit add_restaurant_reference_to_ratings_url
    click_on "New Add Restaurant Reference To Rating"

    fill_in "Restaurant", with: @add_restaurant_reference_to_rating.Restaurant_id
    click_on "Create Add restaurant reference to rating"

    assert_text "Add restaurant reference to rating was successfully created"
    click_on "Back"
  end

  test "updating a Add restaurant reference to rating" do
    visit add_restaurant_reference_to_ratings_url
    click_on "Edit", match: :first

    fill_in "Restaurant", with: @add_restaurant_reference_to_rating.Restaurant_id
    click_on "Update Add restaurant reference to rating"

    assert_text "Add restaurant reference to rating was successfully updated"
    click_on "Back"
  end

  test "destroying a Add restaurant reference to rating" do
    visit add_restaurant_reference_to_ratings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add restaurant reference to rating was successfully destroyed"
  end
end
