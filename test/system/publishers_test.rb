require "application_system_test_case"

class PublishersTest < ApplicationSystemTestCase
  setup do
    @publisher = publishers(:one)
  end

  test "visiting the index" do
    visit publishers_url
    assert_selector "h1", text: "Publishers"
  end

  test "creating a Publisher" do
    visit publishers_url
    click_on "New Publisher"

    fill_in "Age", with: @publisher.age
    fill_in "Name", with: @publisher.name
    fill_in "Organization name", with: @publisher.organization_name
    fill_in "Place", with: @publisher.place
    click_on "Create Publisher"

    assert_text "Publisher was successfully created"
    click_on "Back"
  end

  test "updating a Publisher" do
    visit publishers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @publisher.age
    fill_in "Name", with: @publisher.name
    fill_in "Organization name", with: @publisher.organization_name
    fill_in "Place", with: @publisher.place
    click_on "Update Publisher"

    assert_text "Publisher was successfully updated"
    click_on "Back"
  end

  test "destroying a Publisher" do
    visit publishers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publisher was successfully destroyed"
  end
end
