require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { billing_contact_address_city_state_zip: @customer.billing_contact_address_city_state_zip, billing_contact_email: @customer.billing_contact_email, billing_contact_name: @customer.billing_contact_name, billing_contact_phone: @customer.billing_contact_phone, company_division_sub: @customer.company_division_sub, company_name: @customer.company_name, customer_state: @customer.customer_state, install_contact_name: @customer.install_contact_name, primary_contact_address_city_state_zip: @customer.primary_contact_address_city_state_zip, primary_contact_email: @customer.primary_contact_email, primary_contact_name: @customer.primary_contact_name, primary_contact_phone: @customer.primary_contact_phone }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { billing_contact_address_city_state_zip: @customer.billing_contact_address_city_state_zip, billing_contact_email: @customer.billing_contact_email, billing_contact_name: @customer.billing_contact_name, billing_contact_phone: @customer.billing_contact_phone, company_division_sub: @customer.company_division_sub, company_name: @customer.company_name, customer_state: @customer.customer_state, install_contact_name: @customer.install_contact_name, primary_contact_address_city_state_zip: @customer.primary_contact_address_city_state_zip, primary_contact_email: @customer.primary_contact_email, primary_contact_name: @customer.primary_contact_name, primary_contact_phone: @customer.primary_contact_phone }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
