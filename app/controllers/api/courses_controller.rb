class Api::CoursesController < ApplicationController
  before_action :set_course, only: %i[ show ]

  def index
    @courses = Course.all
    render json: @courses.map { |course|
      {
        id: course.id,
        course_name: course.course_name,
        hole_count: course.holes.count,
        website_url: course.website_url,
        scorecard_url: course.scorecard_url,
        hour_open: course.hour_open,
        hour_close: course.hour_close,
        rating: course.rating,
        punched_greens: course.punched_greens,
        sanded_greens: course.sanded_greens,
        address: {
          phone: course.phone,
          street_address: course.street_address,
          address_locality: course.address_locality,
          address_region: course.address_region,
          postal_code: course.postal_code,
          latitude: course.latitude,
          longitude: course.longitude,
        },
        amenities: {
          guest_friendly: course.membership,
          driving_range: course.driving_range,
          putting_green: course.putting_green,
          chipping_area: course.chipping_area,
          practice_bunker: course.practice_bunker,
          riding_cart_rental: course.riding_cart,
          push_cart_rental: course.push_cart,
          pro_shop: course.pro_shop,
          club_rental: course.club_rental,
          caddie_services: course.caddie_services,
          lessons: course.lessons,
          locker_room_onsite: course.locker_room_onsite,
          shower_onsite: course.shower_onsite,
          lodging_onsite: course.lodging_onsite,
          clubfitting: course.clubfitting,
        },
        tee_info: {
          forward_tee_slope: course.forward_tee_slope,
          forward_tee_rating: course.forward_tee_rating,
          mid_tee_slope: course.mid_tee_slope,
          mid_tee_rating: course.mid_tee_rating,
          long_tee_slope: course.long_tee_slope,
          long_tee_rating: course.long_tee_rating,
          fourth_tee_slope: course.fourth_tee_slope,
          fourth_tee_rating: course.fourth_tee_rating,
          fifth_tee_slope: course.fifth_tee_slope,
          fifth_tee_rating: course.fifth_tee_rating,
        },
        holes:[
        ]
      }
    }
  end

  def show
    @courses = Course.find(id)
    render json: @courses.map { |course|
      {
        id: course.id,
        course_name: course.course_name,
        hole_count: course.holes.count,
        website_url: course.website_url,
        scorecard_url: course.scorecard_url,
        hour_open: course.hour_open,
        hour_close: course.hour_close,
        rating: course.rating,
        punched_greens: course.punched_greens,
        sanded_greens: course.sanded_greens,
        address: {
          phone: course.phone,
          street_address: course.street_address,
          address_locality: course.address_locality,
          address_region: course.address_region,
          postal_code: course.postal_code,
          latitude: course.latitude,
          longitude: course.longitude,
        },
        amenities: {
          guest_friendly: course.membership,
          driving_range: course.driving_range,
          putting_green: course.putting_green,
          chipping_area: course.chipping_area,
          practice_bunker: course.practice_bunker,
          riding_cart_rental: course.riding_cart,
          push_cart_rental: course.push_cart,
          pro_shop: course.pro_shop,
          club_rental: course.club_rental,
          caddie_services: course.caddie_services,
          lessons: course.lessons,
          locker_room_onsite: course.locker_room_onsite,
          shower_onsite: course.shower_onsite,
          lodging_onsite: course.lodging_onsite,
          clubfitting: course.clubfitting,
        },
        tee_info: {
          forward_tee_slope: course.forward_tee_slope,
          forward_tee_rating: course.forward_tee_rating,
          mid_tee_slope: course.mid_tee_slope,
          mid_tee_rating: course.mid_tee_rating,
          long_tee_slope: course.long_tee_slope,
          long_tee_rating: course.long_tee_rating,
          fourth_tee_slope: course.fourth_tee_slope,
          fourth_tee_rating: course.fourth_tee_rating,
          fifth_tee_slope: course.fifth_tee_slope,
          fifth_tee_rating: course.fifth_tee_rating,
        },
        holes:[
        ]
      }
    }
    def set_course
      @course = Course.find(params[:id])
    end
  end
end
