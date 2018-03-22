require 'test_helper'

class TransfertsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get transferts_create_url
    assert_response :success
  end

  test "should get edit" do
    get transferts_edit_url
    assert_response :success
  end

  test "should get new" do
    get transferts_new_url
    assert_response :success
  end

  test "should get update" do
    get transferts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get transferts_destroy_url
    assert_response :success
  end

end
