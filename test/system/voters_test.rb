require "application_system_test_case"

class VotersTest < ApplicationSystemTestCase
  setup do
    @voter = voters(:one)
  end

  test "visiting the index" do
    visit voters_url
    assert_selector "h1", text: "Voters"
  end

  test "creating a Voter" do
    visit voters_url
    click_on "New Voter"

    fill_in "Age", with: @voter.age
    fill_in "First name", with: @voter.first_name
    fill_in "Last name", with: @voter.last_name
    fill_in "Place", with: @voter.place
    click_on "Create Voter"

    assert_text "Voter was successfully created"
    click_on "Back"
  end

  test "updating a Voter" do
    visit voters_url
    click_on "Edit", match: :first

    fill_in "Age", with: @voter.age
    fill_in "First name", with: @voter.first_name
    fill_in "Last name", with: @voter.last_name
    fill_in "Place", with: @voter.place
    click_on "Update Voter"

    assert_text "Voter was successfully updated"
    click_on "Back"
  end

  test "destroying a Voter" do
    visit voters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voter was successfully destroyed"
  end
end
