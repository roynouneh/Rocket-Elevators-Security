require 'test_helper'

class BatteriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battery = batteries(:one)
  end

  test "should get index" do
    get batteries_url
    assert_response :success
  end

  test "should get new" do
    get new_battery_url
    assert_response :success
  end

  test "should create battery" do
    assert_difference('Battery.count') do
      post batteries_url, params: { battery: { building_id: @battery.building_id, building_type: @battery.building_type, certificate_of_operations: @battery.certificate_of_operations, commission_date: @battery.commission_date, employee_id: @battery.employee_id, information: @battery.information, last_inspection: @battery.last_inspection, notes: @battery.notes, status: @battery.status } }
    end

    assert_redirected_to battery_url(Battery.last)
  end

  test "should show battery" do
    get battery_url(@battery)
    assert_response :success
  end

  test "should get edit" do
    get edit_battery_url(@battery)
    assert_response :success
  end

  test "should update battery" do
    patch battery_url(@battery), params: { battery: { building_id: @battery.building_id, building_type: @battery.building_type, certificate_of_operations: @battery.certificate_of_operations, commission_date: @battery.commission_date, employee_id: @battery.employee_id, information: @battery.information, last_inspection: @battery.last_inspection, notes: @battery.notes, status: @battery.status } }
    assert_redirected_to battery_url(@battery)
  end

  test "should destroy battery" do
    assert_difference('Battery.count', -1) do
      delete battery_url(@battery)
    end

    assert_redirected_to batteries_url
  end
end
