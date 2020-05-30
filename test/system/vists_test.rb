require "application_system_test_case"

class VistsTest < ApplicationSystemTestCase
  setup do
    @vist = vists(:one)
  end

  test "visiting the index" do
    visit vists_url
    assert_selector "h1", text: "Vists"
  end

  test "creating a Vist" do
    visit vists_url
    click_on "New Vist"

    fill_in "P serial", with: @vist.p_serial
    click_on "Create Vist"

    assert_text "Vist was successfully created"
    click_on "Back"
  end

  test "updating a Vist" do
    visit vists_url
    click_on "Edit", match: :first

    fill_in "P serial", with: @vist.p_serial
    click_on "Update Vist"

    assert_text "Vist was successfully updated"
    click_on "Back"
  end

  test "destroying a Vist" do
    visit vists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vist was successfully destroyed"
  end
end
