require 'test_helper'

class XRaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @x_ray = x_rays(:one)
  end

  test "should get index" do
    get x_rays_url
    assert_response :success
  end

  test "should get new" do
    get new_x_ray_url
    assert_response :success
  end

  test "should create x_ray" do
    assert_difference('XRay.count') do
      post x_rays_url, params: { x_ray: { image_url: @x_ray.image_url, labele: @x_ray.labele, paitent_id: @x_ray.paitent_id } }
    end

    assert_redirected_to x_ray_url(XRay.last)
  end

  test "should show x_ray" do
    get x_ray_url(@x_ray)
    assert_response :success
  end

  test "should get edit" do
    get edit_x_ray_url(@x_ray)
    assert_response :success
  end

  test "should update x_ray" do
    patch x_ray_url(@x_ray), params: { x_ray: { image_url: @x_ray.image_url, labele: @x_ray.labele, paitent_id: @x_ray.paitent_id } }
    assert_redirected_to x_ray_url(@x_ray)
  end

  test "should destroy x_ray" do
    assert_difference('XRay.count', -1) do
      delete x_ray_url(@x_ray)
    end

    assert_redirected_to x_rays_url
  end
end
