require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "creating a Quote" do
    visit quotes_url
    click_on "New Quote"

    fill_in "Business hours", with: @quote.business_hours
    fill_in "Elevator amount", with: @quote.elevator_amount
    fill_in "Elevator total price", with: @quote.elevator_total_price
    fill_in "Elevator unit price", with: @quote.elevator_unit_price
    fill_in "Final price", with: @quote.final_price
    fill_in "Installation fees", with: @quote.installation_fees
    fill_in "Maximum occupancy", with: @quote.maximum_occupancy
    fill_in "Number of apartments", with: @quote.number_of_apartments
    fill_in "Number of basements", with: @quote.number_of_basements
    fill_in "Number of companies", with: @quote.number_of_companies
    fill_in "Number of corporations", with: @quote.number_of_corporations
    fill_in "Number of elevators", with: @quote.number_of_elevators
    fill_in "Number of floors", with: @quote.number_of_floors
    fill_in "Number of parking spots", with: @quote.number_of_parking_spots
    fill_in "Product line", with: @quote.product_line
    fill_in "Type of building", with: @quote.type_of_building
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "updating a Quote" do
    visit quotes_url
    click_on "Edit", match: :first

    fill_in "Business hours", with: @quote.business_hours
    fill_in "Elevator amount", with: @quote.elevator_amount
    fill_in "Elevator total price", with: @quote.elevator_total_price
    fill_in "Elevator unit price", with: @quote.elevator_unit_price
    fill_in "Final price", with: @quote.final_price
    fill_in "Installation fees", with: @quote.installation_fees
    fill_in "Maximum occupancy", with: @quote.maximum_occupancy
    fill_in "Number of apartments", with: @quote.number_of_apartments
    fill_in "Number of basements", with: @quote.number_of_basements
    fill_in "Number of companies", with: @quote.number_of_companies
    fill_in "Number of corporations", with: @quote.number_of_corporations
    fill_in "Number of elevators", with: @quote.number_of_elevators
    fill_in "Number of floors", with: @quote.number_of_floors
    fill_in "Number of parking spots", with: @quote.number_of_parking_spots
    fill_in "Product line", with: @quote.product_line
    fill_in "Type of building", with: @quote.type_of_building
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote" do
    visit quotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote was successfully destroyed"
  end
end
