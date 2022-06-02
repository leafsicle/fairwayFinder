require "application_system_test_case"

class HolesTest < ApplicationSystemTestCase
  setup do
    @hole = holes(:one)
  end

  test "visiting the index" do
    visit holes_url
    assert_selector "h1", text: "Holes"
  end

  test "should create hole" do
    visit holes_url
    click_on "New hole"

    fill_in "Center of green", with: @hole.center_of_green
    fill_in "Course hcap val", with: @hole.course_hcap_val
    fill_in "Course", with: @hole.course_id
    fill_in "Fifth tee distance", with: @hole.fifth_tee_distance
    fill_in "Forward tee distance", with: @hole.first_tee_distance
    fill_in "Fourth tee distance", with: @hole.fourth_tee_distance
    fill_in "Hole number", with: @hole.hole_number
    fill_in "Long tee distance", with: @hole.third_tee_distance
    fill_in "Mid tee distance", with: @hole.second_tee_distance
    fill_in "Par value", with: @hole.par_value
    click_on "Create Hole"

    assert_text "Hole was successfully created"
    click_on "Back"
  end

  test "should update Hole" do
    visit hole_url(@hole)
    click_on "Edit this hole", match: :first

    fill_in "Center of green", with: @hole.center_of_green
    fill_in "Course hcap val", with: @hole.course_hcap_val
    fill_in "Course", with: @hole.course_id
    fill_in "Fifth tee distance", with: @hole.fifth_tee_distance
    fill_in "Forward tee distance", with: @hole.first_tee_distance
    fill_in "Fourth tee distance", with: @hole.fourth_tee_distance
    fill_in "Hole number", with: @hole.hole_number
    fill_in "Long tee distance", with: @hole.third_tee_distance
    fill_in "Mid tee distance", with: @hole.second_tee_distance
    fill_in "Par value", with: @hole.par_value
    click_on "Update Hole"

    assert_text "Hole was successfully updated"
    click_on "Back"
  end

  test "should destroy Hole" do
    visit hole_url(@hole)
    click_on "Destroy this hole", match: :first

    assert_text "Hole was successfully destroyed"
  end
end
