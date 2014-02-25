require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, quote: { artwork_due_date: @quote.artwork_due_date, artwork_proof_link: @quote.artwork_proof_link, order_installation_date: @quote.order_installation_date, order_ship_date: @quote.order_ship_date, production_notes: @quote.production_notes, quote_amount: @quote.quote_amount, quote_due_date: @quote.quote_due_date, quote_id: @quote.quote_id, quote_information: @quote.quote_information, quote_link: @quote.quote_link, quote_master_id: @quote.quote_master_id, quote_status: @quote.quote_status }
    end

    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should show quote" do
    get :show, id: @quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote
    assert_response :success
  end

  test "should update quote" do
    patch :update, id: @quote, quote: { artwork_due_date: @quote.artwork_due_date, artwork_proof_link: @quote.artwork_proof_link, order_installation_date: @quote.order_installation_date, order_ship_date: @quote.order_ship_date, production_notes: @quote.production_notes, quote_amount: @quote.quote_amount, quote_due_date: @quote.quote_due_date, quote_id: @quote.quote_id, quote_information: @quote.quote_information, quote_link: @quote.quote_link, quote_master_id: @quote.quote_master_id, quote_status: @quote.quote_status }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end
