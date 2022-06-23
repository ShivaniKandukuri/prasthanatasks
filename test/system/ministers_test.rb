require "application_system_test_case"

class MinistersTest < ApplicationSystemTestCase
  setup do
    @minister = ministers(:one)
  end

  test "visiting the index" do
    visit ministers_url
    assert_selector "h1", text: "Ministers"
  end

  test "creating a Minister" do
    visit ministers_url
    click_on "New Minister"

    fill_in "Age", with: @minister.age
    fill_in "Name", with: @minister.name
    fill_in "Party", with: @minister.party
    click_on "Create Minister"

    assert_text "Minister was successfully created"
    click_on "Back"
  end

  test "updating a Minister" do
    visit ministers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @minister.age
    fill_in "Name", with: @minister.name
    fill_in "Party", with: @minister.party
    click_on "Update Minister"

    assert_text "Minister was successfully updated"
    click_on "Back"
  end

  test "destroying a Minister" do
    visit ministers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Minister was successfully destroyed"
  end
end
