require "application_system_test_case"

class GoodimgsTest < ApplicationSystemTestCase
  setup do
    @goodimg = goodimgs(:one)
  end

  test "visiting the index" do
    visit goodimgs_url
    assert_selector "h1", text: "Goodimgs"
  end

  test "creating a Goodimg" do
    visit goodimgs_url
    click_on "New Goodimg"

    fill_in "Goodid", with: @goodimg.goodid
    fill_in "Link", with: @goodimg.link
    click_on "Create Goodimg"

    assert_text "Goodimg was successfully created"
    click_on "Back"
  end

  test "updating a Goodimg" do
    visit goodimgs_url
    click_on "Edit", match: :first

    fill_in "Goodid", with: @goodimg.goodid
    fill_in "Link", with: @goodimg.link
    click_on "Update Goodimg"

    assert_text "Goodimg was successfully updated"
    click_on "Back"
  end

  test "destroying a Goodimg" do
    visit goodimgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Goodimg was successfully destroyed"
  end
end
