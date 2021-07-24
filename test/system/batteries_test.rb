require "application_system_test_case"

class BatteriesTest < ApplicationSystemTestCase
  setup do
    @battery = batteries(:one)
  end

  test "visiting the index" do
    visit batteries_url
    assert_selector "h1", text: "Batteries"
  end

  test "creating a Battery" do
    visit batteries_url
    click_on "New Battery"

    fill_in "Building", with: @battery.building_id
    fill_in "Building type", with: @battery.building_type
    fill_in "Certificate of operations", with: @battery.certificate_of_operations
    fill_in "Commission date", with: @battery.commission_date
    fill_in "Employee", with: @battery.employee_id
    fill_in "Information", with: @battery.information
    fill_in "Last inspection", with: @battery.last_inspection
    fill_in "Notes", with: @battery.notes
    fill_in "Status", with: @battery.status
    click_on "Create Battery"

    assert_text "Battery was successfully created"
    click_on "Back"
  end

  test "updating a Battery" do
    visit batteries_url
    click_on "Edit", match: :first

    fill_in "Building", with: @battery.building_id
    fill_in "Building type", with: @battery.building_type
    fill_in "Certificate of operations", with: @battery.certificate_of_operations
    fill_in "Commission date", with: @battery.commission_date
    fill_in "Employee", with: @battery.employee_id
    fill_in "Information", with: @battery.information
    fill_in "Last inspection", with: @battery.last_inspection
    fill_in "Notes", with: @battery.notes
    fill_in "Status", with: @battery.status
    click_on "Update Battery"

    assert_text "Battery was successfully updated"
    click_on "Back"
  end

  test "destroying a Battery" do
    visit batteries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Battery was successfully destroyed"
  end
end
