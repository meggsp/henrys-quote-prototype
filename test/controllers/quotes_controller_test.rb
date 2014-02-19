require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "should get new_quote" do
    get :new_quote
    assert_response :success
  end

  test "should get current_quotes" do
    get :current_quotes
    assert_response :success
  end

  test "should get past_quotes" do
    get :past_quotes
    assert_response :success
  end

end
