require "application_system_test_case"

class PersonnelsTest < ApplicationSystemTestCase
  setup do
    @personnel = personnels(:one)
  end

  test "visiting the index" do
    visit personnels_url
    assert_selector "h1", text: "Personnels"
  end

  test "creating a Personnel" do
    visit personnels_url
    click_on "New Personnel"

    click_on "Create Personnel"

    assert_text "Personnel was successfully created"
    click_on "Back"
  end

  test "updating a Personnel" do
    visit personnels_url
    click_on "Edit", match: :first

    click_on "Update Personnel"

    assert_text "Personnel was successfully updated"
    click_on "Back"
  end

  test "destroying a Personnel" do
    visit personnels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personnel was successfully destroyed"
  end
end
