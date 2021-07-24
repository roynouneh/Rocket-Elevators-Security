require 'test_helper'

class BuildingdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buildingdetail = buildingdetails(:one)
  end

  test "should get index" do
    get buildingdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_buildingdetail_url
    assert_response :success
  end

  test "should create buildingdetail" do
    assert_difference('Buildingdetail.count') do
      post buildingdetails_url, params: { buildingdetail: { building_id: @buildingdetail.building_id, information: @buildingdetail.information, information_value: @buildingdetail.information_value } }
    end

    assert_redirected_to buildingdetail_url(Buildingdetail.last)
  end

  test "should show buildingdetail" do
    get buildingdetail_url(@buildingdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_buildingdetail_url(@buildingdetail)
    assert_response :success
  end

  test "should update buildingdetail" do
    patch buildingdetail_url(@buildingdetail), params: { buildingdetail: { building_id: @buildingdetail.building_id, information: @buildingdetail.information, information_value: @buildingdetail.information_value } }
    assert_redirected_to buildingdetail_url(@buildingdetail)
  end

  test "should destroy buildingdetail" do
    assert_difference('Buildingdetail.count', -1) do
      delete buildingdetail_url(@buildingdetail)
    end

    assert_redirected_to buildingdetails_url
  end
end
