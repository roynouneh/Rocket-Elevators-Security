require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { comp_headquarters_adress: @customer.comp_headquarters_adress, company_description: @customer.company_description, company_name: @customer.company_name, contact_email: @customer.contact_email, contact_full_name: @customer.contact_full_name, contact_phone: @customer.contact_phone, customer_creation_date: @customer.customer_creation_date, service_technical_authority: @customer.service_technical_authority, tech_auto_phone: @customer.tech_auto_phone, tech_manager_email: @customer.tech_manager_email, user_id: @customer.user_id } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { comp_headquarters_adress: @customer.comp_headquarters_adress, company_description: @customer.company_description, company_name: @customer.company_name, contact_email: @customer.contact_email, contact_full_name: @customer.contact_full_name, contact_phone: @customer.contact_phone, customer_creation_date: @customer.customer_creation_date, service_technical_authority: @customer.service_technical_authority, tech_auto_phone: @customer.tech_auto_phone, tech_manager_email: @customer.tech_manager_email, user_id: @customer.user_id } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
