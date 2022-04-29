require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "should create course" do
    visit courses_url
    click_on "New course"

    fill_in "Address locality", with: @course.address_locality
    fill_in "Address region", with: @course.address_region
    check "Caddie services" if @course.caddie_services
    check "Chipping area" if @course.chipping_area
    check "Club rental" if @course.club_rental
    check "Clubfitting" if @course.clubfitting
    check "Driving range" if @course.driving_range
    fill_in "Hole count", with: @course.hole_count
    fill_in "Hour close", with: @course.hour_close
    fill_in "Hour open", with: @course.hour_open
    check "Lessons" if @course.lessons
    check "Locker room onsite" if @course.locker_room_onsite
    check "Lodging onsite" if @course.lodging_onsite
    check "Membership" if @course.membership
    fill_in "Phone", with: @course.phone
    fill_in "Postal code", with: @course.postal_code
    check "Practice bunker" if @course.practice_bunker
    check "Pro shop" if @course.pro_shop
    check "Punched greens" if @course.punched_greens
    check "Push cart" if @course.push_cart
    check "Putting green" if @course.putting_green
    check "Riding cart" if @course.riding_cart
    check "Sanded greens" if @course.sanded_greens
    check "Shower onsite" if @course.shower_onsite
    fill_in "Street address", with: @course.street_address
    fill_in "Website url", with: @course.website_url
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "should update Course" do
    visit course_url(@course)
    click_on "Edit this course", match: :first

    fill_in "Address locality", with: @course.address_locality
    fill_in "Address region", with: @course.address_region
    check "Caddie services" if @course.caddie_services
    check "Chipping area" if @course.chipping_area
    check "Club rental" if @course.club_rental
    check "Clubfitting" if @course.clubfitting
    check "Driving range" if @course.driving_range
    fill_in "Hole count", with: @course.hole_count
    fill_in "Hour close", with: @course.hour_close
    fill_in "Hour open", with: @course.hour_open
    check "Lessons" if @course.lessons
    check "Locker room onsite" if @course.locker_room_onsite
    check "Lodging onsite" if @course.lodging_onsite
    check "Membership" if @course.membership
    fill_in "Phone", with: @course.phone
    fill_in "Postal code", with: @course.postal_code
    check "Practice bunker" if @course.practice_bunker
    check "Pro shop" if @course.pro_shop
    check "Punched greens" if @course.punched_greens
    check "Push cart" if @course.push_cart
    check "Putting green" if @course.putting_green
    check "Riding cart" if @course.riding_cart
    check "Sanded greens" if @course.sanded_greens
    check "Shower onsite" if @course.shower_onsite
    fill_in "Street address", with: @course.street_address
    fill_in "Website url", with: @course.website_url
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "should destroy Course" do
    visit course_url(@course)
    click_on "Destroy this course", match: :first

    assert_text "Course was successfully destroyed"
  end
end
