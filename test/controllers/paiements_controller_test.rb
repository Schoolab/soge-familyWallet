require 'test_helper'

class PaiementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paiement = paiements(:one)
  end

  test "should get index" do
    get paiements_url
    assert_response :success
  end

  test "should get new" do
    get new_paiement_url
    assert_response :success
  end

  test "should create paiement" do
    assert_difference('Paiement.count') do
      post paiements_url, params: { paiement: { adress_1: @paiement.adress_1, adress_2: @paiement.adress_2, city: @paiement.city, country: @paiement.country, cp: @paiement.cp, mode: @paiement.mode, plafond: @paiement.plafond, roof: @paiement.roof } }
    end

    assert_redirected_to paiement_url(Paiement.last)
  end

  test "should show paiement" do
    get paiement_url(@paiement)
    assert_response :success
  end

  test "should get edit" do
    get edit_paiement_url(@paiement)
    assert_response :success
  end

  test "should update paiement" do
    patch paiement_url(@paiement), params: { paiement: { adress_1: @paiement.adress_1, adress_2: @paiement.adress_2, city: @paiement.city, country: @paiement.country, cp: @paiement.cp, mode: @paiement.mode, plafond: @paiement.plafond, roof: @paiement.roof } }
    assert_redirected_to paiement_url(@paiement)
  end

  test "should destroy paiement" do
    assert_difference('Paiement.count', -1) do
      delete paiement_url(@paiement)
    end

    assert_redirected_to paiements_url
  end
end
