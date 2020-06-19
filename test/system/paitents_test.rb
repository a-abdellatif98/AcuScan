# frozen_string_literal: true

require 'application_system_test_case'

class PaitentsTest < ApplicationSystemTestCase
  setup do
    @paitent = paitents(:one)
  end

  test 'visiting the index' do
    visit paitents_url
    assert_selector 'h1', text: 'Paitents'
  end

  test 'creating a Paitent' do
    visit paitents_url
    click_on 'New Paitent'

    fill_in 'National', with: @paitent.National_id
    fill_in 'Adress', with: @paitent.adress
    fill_in 'Dob', with: @paitent.dob
    fill_in 'Gender', with: @paitent.gender
    fill_in 'Mobile', with: @paitent.mobile
    fill_in 'Name', with: @paitent.name
    fill_in 'Visits', with: @paitent.visits_id
    click_on 'Create Paitent'

    assert_text 'Paitent was successfully created'
    click_on 'Back'
  end

  test 'updating a Paitent' do
    visit paitents_url
    click_on 'Edit', match: :first

    fill_in 'National', with: @paitent.National_id
    fill_in 'Adress', with: @paitent.adress
    fill_in 'Dob', with: @paitent.dob
    fill_in 'Gender', with: @paitent.gender
    fill_in 'Mobile', with: @paitent.mobile
    fill_in 'Name', with: @paitent.name
    fill_in 'Visits', with: @paitent.visits_id
    click_on 'Update Paitent'

    assert_text 'Paitent was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Paitent' do
    visit paitents_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Paitent was successfully destroyed'
  end
end
