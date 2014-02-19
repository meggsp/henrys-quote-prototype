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
      post :create, quote: { artwork_due_date: @quote.artwork_due_date, artwork_proof_link: @quote.artwork_proof_link, customer_master_id: @quote.customer_master_id, project_info: @quote.project_info, prospect_id: @quote.prospect_id, quote_amount: @quote.quote_amount, quote_due_date: @quote.quote_due_date, quote_notes: @quote.quote_notes, quote_projected_close_date: @quote.quote_projected_close_date }
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
    patch :update, id: @quote, quote: { artwork_due_date: @quote.artwork_due_date, artwork_proof_link: @quote.artwork_proof_link, customer_master_id: @quote.customer_master_id, project_info: @quote.project_info, prospect_id: @quote.prospect_id, quote_amount: @quote.quote_amount, quote_due_date: @quote.quote_due_date, quote_notes: @quote.quote_notes, quote_projected_close_date: @quote.quote_projected_close_date }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end
