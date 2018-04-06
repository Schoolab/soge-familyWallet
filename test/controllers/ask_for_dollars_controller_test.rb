require 'test_helper'

class AskForDollarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ask_for_dollar = ask_for_dollars(:one)
  end

  test "should get index" do
    get ask_for_dollars_url
    assert_response :success
  end

  test "should get new" do
    get new_ask_for_dollar_url
    assert_response :success
  end

  test "should create ask_for_dollar" do
    assert_difference('AskForDollar.count') do
      post ask_for_dollars_url, params: { ask_for_dollar: { accepted: @ask_for_dollar.accepted, credit: @ask_for_dollar.credit, description: @ask_for_dollar.description, has_been_reed: @ask_for_dollar.has_been_reed, object: @ask_for_dollar.object } }
    end

    assert_redirected_to ask_for_dollar_url(AskForDollar.last)
  end

  test "should show ask_for_dollar" do
    get ask_for_dollar_url(@ask_for_dollar)
    assert_response :success
  end

  test "should get edit" do
    get edit_ask_for_dollar_url(@ask_for_dollar)
    assert_response :success
  end

  test "should update ask_for_dollar" do
    patch ask_for_dollar_url(@ask_for_dollar), params: { ask_for_dollar: { accepted: @ask_for_dollar.accepted, credit: @ask_for_dollar.credit, description: @ask_for_dollar.description, has_been_reed: @ask_for_dollar.has_been_reed, object: @ask_for_dollar.object } }
    assert_redirected_to ask_for_dollar_url(@ask_for_dollar)
  end

  test "should destroy ask_for_dollar" do
    assert_difference('AskForDollar.count', -1) do
      delete ask_for_dollar_url(@ask_for_dollar)
    end

    assert_redirected_to ask_for_dollars_url
  end
end
