require 'test_helper'

class Pay4mesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pay4mes_show_url
    assert_response :success
  end

  test "should get index" do
    get pay4mes_index_url
    assert_response :success
  end

  test "should get new" do
    get pay4mes_new_url
    assert_response :success
  end

  test "should get create" do
    get pay4mes_create_url
    assert_response :success
  end

  test "should get edit" do
    get pay4mes_edit_url
    assert_response :success
  end

  test "should get update" do
    get pay4mes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pay4mes_destroy_url
    assert_response :success
  end

end
