require 'test_helper'

class ProspectsControllerTest < ActionController::TestCase
  setup do
    @prospect = prospects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prospects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prospect" do
    assert_difference('Prospect.count') do
      post :create, prospect: { prospect_address_city_state_zip: @prospect.prospect_address_city_state_zip, prospect_company: @prospect.prospect_company, prospect_email: @prospect.prospect_email, prospect_id: @prospect.prospect_id, prospect_name: @prospect.prospect_name, prospect_phone: @prospect.prospect_phone }
    end

    assert_redirected_to prospect_path(assigns(:prospect))
  end

  test "should show prospect" do
    get :show, id: @prospect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prospect
    assert_response :success
  end

  test "should update prospect" do
    patch :update, id: @prospect, prospect: { prospect_address_city_state_zip: @prospect.prospect_address_city_state_zip, prospect_company: @prospect.prospect_company, prospect_email: @prospect.prospect_email, prospect_id: @prospect.prospect_id, prospect_name: @prospect.prospect_name, prospect_phone: @prospect.prospect_phone }
    assert_redirected_to prospect_path(assigns(:prospect))
  end

  test "should destroy prospect" do
    assert_difference('Prospect.count', -1) do
      delete :destroy, id: @prospect
    end

    assert_redirected_to prospects_path
  end
end
