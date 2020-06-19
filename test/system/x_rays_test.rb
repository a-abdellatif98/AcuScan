# frozen_string_literal: true

require 'application_system_test_case'

class XRaysTest < ApplicationSystemTestCase
  setup do
    @x_ray = x_rays(:one)
  end

  test 'visiting the index' do
    visit x_rays_url
    assert_selector 'h1', text: 'X Rays'
  end

  test 'creating a X ray' do
    visit x_rays_url
    click_on 'New X Ray'

    fill_in 'Image url', with: @x_ray.image_url
    fill_in 'Labele', with: @x_ray.labele
    fill_in 'Paitent', with: @x_ray.paitent_id
    click_on 'Create X ray'

    assert_text 'X ray was successfully created'
    click_on 'Back'
  end

  test 'updating a X ray' do
    visit x_rays_url
    click_on 'Edit', match: :first

    fill_in 'Image url', with: @x_ray.image_url
    fill_in 'Labele', with: @x_ray.labele
    fill_in 'Paitent', with: @x_ray.paitent_id
    click_on 'Update X ray'

    assert_text 'X ray was successfully updated'
    click_on 'Back'
  end

  test 'destroying a X ray' do
    visit x_rays_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'X ray was successfully destroyed'
  end
end
