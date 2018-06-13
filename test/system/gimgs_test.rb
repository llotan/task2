require "application_system_test_case"

class GimgsTest < ApplicationSystemTestCase
  setup do
    @gimg = gimgs(:one)
  end

  test "visiting the index" do
    visit gimgs_url
    assert_selector "h1", text: "Gimgs"
  end

  test "creating a Gimg" do
    visit gimgs_url
    click_on "New Gimg"

    fill_in "Good", with: @gimg.good_id
    fill_in "Link", with: @gimg.link
    click_on "Create Gimg"

    assert_text "Gimg was successfully created"
    click_on "Back"
  end

  test "updating a Gimg" do
    visit gimgs_url
    click_on "Edit", match: :first

    fill_in "Good", with: @gimg.good_id
    fill_in "Link", with: @gimg.link
    click_on "Update Gimg"

    assert_text "Gimg was successfully updated"
    click_on "Back"
  end

  test "destroying a Gimg" do
    visit gimgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gimg was successfully destroyed"
  end
end
