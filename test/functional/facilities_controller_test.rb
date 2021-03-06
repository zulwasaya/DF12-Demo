require 'test_helper'

class FacilitiesControllerTest < ActionController::TestCase
  setup do
    @facility = facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facility" do
    assert_difference('Facility.count') do
      post :create, facility: { description__c: @facility.description__c, hours__c: @facility.hours__c, lat__c: @facility.lat__c, location__c: @facility.location__c, long__c: @facility.long__c, name: @facility.name }
    end

    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should show facility" do
    get :show, id: @facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facility
    assert_response :success
  end

  test "should update facility" do
    put :update, id: @facility, facility: { description__c: @facility.description__c, hours__c: @facility.hours__c, lat__c: @facility.lat__c, location__c: @facility.location__c, long__c: @facility.long__c, name: @facility.name }
    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should destroy facility" do
    assert_difference('Facility.count', -1) do
      delete :destroy, id: @facility
    end

    assert_redirected_to facilities_path
  end
end
