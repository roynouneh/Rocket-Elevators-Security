require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "creating a Building" do
    visit buildings_url
    click_on "New Building"

    fill_in "Admin email", with: @building.admin_email
    fill_in "Admin name", with: @building.admin_name
    fill_in "Admin phone", with: @building.admin_phone
    fill_in "Building adress", with: @building.building_adress
    fill_in "Customer", with: @building.customer_id
    fill_in "Tech contact email", with: @building.tech_contact_email
    fill_in "Tech contact name", with: @building.tech_contact_name
    fill_in "Tech contact phone", with: @building.tech_contact_phone
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "updating a Building" do
    visit buildings_url
    click_on "Edit", match: :first

    fill_in "Admin email", with: @building.admin_email
    fill_in "Admin name", with: @building.admin_name
    fill_in "Admin phone", with: @building.admin_phone
    fill_in "Building adress", with: @building.building_adress
    fill_in "Customer", with: @building.customer_id
    fill_in "Tech contact email", with: @building.tech_contact_email
    fill_in "Tech contact name", with: @building.tech_contact_name
    fill_in "Tech contact phone", with: @building.tech_contact_phone
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "destroying a Building" do
    visit buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Building was successfully destroyed"
  end
end
