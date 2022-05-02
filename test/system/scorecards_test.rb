require "application_system_test_case"

class ScorecardsTest < ApplicationSystemTestCase
  setup do
    @scorecard = scorecards(:one)
  end

  test "visiting the index" do
    visit scorecards_url
    assert_selector "h1", text: "Scorecards"
  end

  test "should create scorecard" do
    visit scorecards_url
    click_on "New scorecard"

    fill_in "User", with: @scorecard.user_id
    click_on "Create Scorecard"

    assert_text "Scorecard was successfully created"
    click_on "Back"
  end

  test "should update Scorecard" do
    visit scorecard_url(@scorecard)
    click_on "Edit this scorecard", match: :first

    fill_in "User", with: @scorecard.user_id
    click_on "Update Scorecard"

    assert_text "Scorecard was successfully updated"
    click_on "Back"
  end

  test "should destroy Scorecard" do
    visit scorecard_url(@scorecard)
    click_on "Destroy this scorecard", match: :first

    assert_text "Scorecard was successfully destroyed"
  end
end
