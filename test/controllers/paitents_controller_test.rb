require 'test_helper'

class PaitentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paitent = paitents(:one)
  end

  test "should get index" do
    get paitents_url
    assert_response :success
  end

  test "should get new" do
    get new_paitent_url
    assert_response :success
  end

  test "should create paitent" do
    assert_difference('Paitent.count') do
      post paitents_url, params: { paitent: { National_id: @paitent.National_id, adress: @paitent.adress, dob: @paitent.dob, gender: @paitent.gender, mobile: @paitent.mobile, name: @paitent.name, visits_id: @paitent.visits_id } }
    end

    assert_redirected_to paitent_url(Paitent.last)
  end

  test "should show paitent" do
    get paitent_url(@paitent)
    assert_response :success
  end

  test "should get edit" do
    get edit_paitent_url(@paitent)
    assert_response :success
  end

  test "should update paitent" do
    patch paitent_url(@paitent), params: { paitent: { National_id: @paitent.National_id, adress: @paitent.adress, dob: @paitent.dob, gender: @paitent.gender, mobile: @paitent.mobile, name: @paitent.name, visits_id: @paitent.visits_id } }
    assert_redirected_to paitent_url(@paitent)
  end

  test "should destroy paitent" do
    assert_difference('Paitent.count', -1) do
      delete paitent_url(@paitent)
    end

    assert_redirected_to paitents_url
  end
end
