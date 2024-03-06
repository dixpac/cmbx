require "application_system_test_case"

class ManifacturersTest < ApplicationSystemTestCase
  setup do
    @manifacturer = manifacturers(:one)
  end

  test "visiting the index" do
    visit manifacturers_url
    assert_selector "h1", text: "Manifacturers"
  end

  test "should create manifacturer" do
    visit manifacturers_url
    click_on "New manifacturer"

    fill_in "Name", with: @manifacturer.name
    click_on "Create Manifacturer"

    assert_text "Manifacturer was successfully created"
    click_on "Back"
  end

  test "should update Manifacturer" do
    visit manifacturer_url(@manifacturer)
    click_on "Edit this manifacturer", match: :first

    fill_in "Name", with: @manifacturer.name
    click_on "Update Manifacturer"

    assert_text "Manifacturer was successfully updated"
    click_on "Back"
  end

  test "should destroy Manifacturer" do
    visit manifacturer_url(@manifacturer)
    click_on "Destroy this manifacturer", match: :first

    assert_text "Manifacturer was successfully destroyed"
  end
end
