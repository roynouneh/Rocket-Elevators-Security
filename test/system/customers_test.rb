require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Comp headquarters adress", with: @customer.comp_headquarters_adress
    fill_in "Company description", with: @customer.company_description
    fill_in "Company name", with: @customer.company_name
    fill_in "Contact email", with: @customer.contact_email
    fill_in "Contact full name", with: @customer.contact_full_name
    fill_in "Contact phone", with: @customer.contact_phone
    fill_in "Customer creation date", with: @customer.customer_creation_date
    fill_in "Service technical authority", with: @customer.service_technical_authority
    fill_in "Tech auto phone", with: @customer.tech_auto_phone
    fill_in "Tech manager email", with: @customer.tech_manager_email
    fill_in "User", with: @customer.user_id
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Comp headquarters adress", with: @customer.comp_headquarters_adress
    fill_in "Company description", with: @customer.company_description
    fill_in "Company name", with: @customer.company_name
    fill_in "Contact email", with: @customer.contact_email
    fill_in "Contact full name", with: @customer.contact_full_name
    fill_in "Contact phone", with: @customer.contact_phone
    fill_in "Customer creation date", with: @customer.customer_creation_date
    fill_in "Service technical authority", with: @customer.service_technical_authority
    fill_in "Tech auto phone", with: @customer.tech_auto_phone
    fill_in "Tech manager email", with: @customer.tech_manager_email
    fill_in "User", with: @customer.user_id
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
