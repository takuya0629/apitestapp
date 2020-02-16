require "application_system_test_case"

class GestsTest < ApplicationSystemTestCase
  setup do
    @gest = gests(:one)
  end

  test "visiting the index" do
    visit gests_url
    assert_selector "h1", text: "Gests"
  end

  test "creating a Gest" do
    visit gests_url
    click_on "New Gest"

    fill_in "Body", with: @gest.body
    fill_in "Name", with: @gest.name
    click_on "Create Gest"

    assert_text "Gest was successfully created"
    click_on "Back"
  end

  test "updating a Gest" do
    visit gests_url
    click_on "Edit", match: :first

    fill_in "Body", with: @gest.body
    fill_in "Name", with: @gest.name
    click_on "Update Gest"

    assert_text "Gest was successfully updated"
    click_on "Back"
  end

  test "destroying a Gest" do
    visit gests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gest was successfully destroyed"
  end
end
