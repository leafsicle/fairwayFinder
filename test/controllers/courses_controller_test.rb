require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference("Course.count") do
      post courses_url, params: { course: { address_locality: @course.address_locality, address_region: @course.address_region, caddie_services: @course.caddie_services, chipping_area: @course.chipping_area, club_rental: @course.club_rental, clubfitting: @course.clubfitting, driving_range: @course.driving_range, hole_count: @course.hole_count, hour_close: @course.hour_close, hour_open: @course.hour_open, lessons: @course.lessons, locker_room_onsite: @course.locker_room_onsite, lodging_onsite: @course.lodging_onsite, membership: @course.membership, phone: @course.phone, postal_code: @course.postal_code, practice_bunker: @course.practice_bunker, pro_shop: @course.pro_shop, punched_greens: @course.punched_greens, push_cart: @course.push_cart, putting_green: @course.putting_green, riding_cart: @course.riding_cart, sanded_greens: @course.sanded_greens, shower_onsite: @course.shower_onsite, street_address: @course.street_address, website_url: @course.website_url } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { address_locality: @course.address_locality, address_region: @course.address_region, caddie_services: @course.caddie_services, chipping_area: @course.chipping_area, club_rental: @course.club_rental, clubfitting: @course.clubfitting, driving_range: @course.driving_range, hole_count: @course.hole_count, hour_close: @course.hour_close, hour_open: @course.hour_open, lessons: @course.lessons, locker_room_onsite: @course.locker_room_onsite, lodging_onsite: @course.lodging_onsite, membership: @course.membership, phone: @course.phone, postal_code: @course.postal_code, practice_bunker: @course.practice_bunker, pro_shop: @course.pro_shop, punched_greens: @course.punched_greens, push_cart: @course.push_cart, putting_green: @course.putting_green, riding_cart: @course.riding_cart, sanded_greens: @course.sanded_greens, shower_onsite: @course.shower_onsite, street_address: @course.street_address, website_url: @course.website_url } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference("Course.count", -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
