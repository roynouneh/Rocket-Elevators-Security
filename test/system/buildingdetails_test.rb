require "application_system_test_case"

class BuildingdetailsTest < ApplicationSystemTestCase
  setup do
    @buildingdetail = buildingdetails(:one)
  end

  test "visiting the index" do
    visit buildingdetails_url
    assert_selector "h1", text: "Buildingdetails"
  end

  test "creating a Buildingdetail" do
    visit buildingdetails_url
    click_on "New Buildingdetail"

    fill_in "Building", with: @buildingdetail.building_id
    fill_in "Information", with: @buildingdetail.information
    fill_in "Information value", with: @buildingdetail.information_value
    click_on "Create Buildingdetail"

    assert_text "Buildingdetail was successfully created"
    click_on "Back"
  end

  test "updating a Buildingdetail" do
    visit buildingdetails_url
    click_on "Edit", match: :first

    fill_in "Building", with: @buildingdetail.building_id
    fill_in "Information", with: @buildingdetail.information
    fill_in "Information value", with: @buildingdetail.information_value
    click_on "Update Buildingdetail"

    assert_text "Buildingdetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Buildingdetail" do
    visit buildingdetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buildingdetail was successfully destroyed"
  end
end
