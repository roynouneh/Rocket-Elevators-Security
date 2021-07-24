require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_url
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post quotes_url, params: { quote: { business_hours: @quote.business_hours, elevator_amount: @quote.elevator_amount, elevator_total_price: @quote.elevator_total_price, elevator_unit_price: @quote.elevator_unit_price, final_price: @quote.final_price, installation_fees: @quote.installation_fees, maximum_occupancy: @quote.maximum_occupancy, number_of_apartments: @quote.number_of_apartments, number_of_basements: @quote.number_of_basements, number_of_companies: @quote.number_of_companies, number_of_corporations: @quote.number_of_corporations, number_of_elevators: @quote.number_of_elevators, number_of_floors: @quote.number_of_floors, number_of_parking_spots: @quote.number_of_parking_spots, product_line: @quote.product_line, type_of_building: @quote.type_of_building } }
    end

    assert_redirected_to quote_url(Quote.last)
  end

  test "should show quote" do
    get quote_url(@quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_url(@quote)
    assert_response :success
  end

  test "should update quote" do
    patch quote_url(@quote), params: { quote: { business_hours: @quote.business_hours, elevator_amount: @quote.elevator_amount, elevator_total_price: @quote.elevator_total_price, elevator_unit_price: @quote.elevator_unit_price, final_price: @quote.final_price, installation_fees: @quote.installation_fees, maximum_occupancy: @quote.maximum_occupancy, number_of_apartments: @quote.number_of_apartments, number_of_basements: @quote.number_of_basements, number_of_companies: @quote.number_of_companies, number_of_corporations: @quote.number_of_corporations, number_of_elevators: @quote.number_of_elevators, number_of_floors: @quote.number_of_floors, number_of_parking_spots: @quote.number_of_parking_spots, product_line: @quote.product_line, type_of_building: @quote.type_of_building } }
    assert_redirected_to quote_url(@quote)
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete quote_url(@quote)
    end

    assert_redirected_to quotes_url
  end
end
