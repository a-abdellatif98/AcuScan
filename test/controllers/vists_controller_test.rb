require 'test_helper'

class VistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vist = vists(:one)
  end

  test "should get index" do
    get vists_url
    assert_response :success
  end

  test "should get new" do
    get new_vist_url
    assert_response :success
  end

  test "should create vist" do
    assert_difference('Vist.count') do
      post vists_url, params: { vist: { p_serial: @vist.p_serial } }
    end

    assert_redirected_to vist_url(Vist.last)
  end

  test "should show vist" do
    get vist_url(@vist)
    assert_response :success
  end

  test "should get edit" do
    get edit_vist_url(@vist)
    assert_response :success
  end

  test "should update vist" do
    patch vist_url(@vist), params: { vist: { p_serial: @vist.p_serial } }
    assert_redirected_to vist_url(@vist)
  end

  test "should destroy vist" do
    assert_difference('Vist.count', -1) do
      delete vist_url(@vist)
    end

    assert_redirected_to vists_url
  end
end
