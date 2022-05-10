# This file should contain all the record creation needed to seed the database with its default values.
#  loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# create_course
Course.create!(
  course_name: "Mangrove Bay",
  membership: false,
  hole_count: 18,
  phone: "7278937800",
  website_url: "www.golfstpete.com",
  scorecard_url: "http://www.golfstpete.com/pdf/MangroveBay_BenchCraftCompany_SC2.pdf",
  hour_open: 6,
  hour_close: 6,
  driving_range: true,
  putting_green: true,
  chipping_area: true,
  practice_bunker: true,
  riding_cart: true,
  push_cart: true,
  pro_shop: true,
  club_rental: true,
  caddie_services: false,
  lessons: true,
  locker_room_onsite: true,
  shower_onsite: true,
  lodging_onsite: false,
  clubfitting: false,
  punched_greens: false,
  sanded_greens: false,
  street_address: "875 62nd Ave NE",
  address_locality: "St. Petersburg",
  address_region: "Florida",
  postal_code: "33702",
  forward_tee_slope: 112,
  forward_tee_rating: 68.7,
  mid_tee_slope: 113,
  mid_tee_rating: 65.5,
  long_tee_slope: 114,
  long_tee_rating: 69.5,
  fourth_tee_slope: 116,
  fourth_tee_rating: 71.3,
  fifth_tee_slope: 116,
  fifth_tee_rating: 71.3,
  latitude: 27.83347,
  longitude: -82.62764,
  rating: 
  created_at: Time.now,
  updated_at: Time.now,
)
Course.create!(
  course_name: "Innisbrook: Copperhead",
  membership: false,
  hole_count: 18,
  phone: "800-492-6899",
  website_url: "https://www.innisbrookgolfresort.com/",
  scorecard_url: "https://www.innisbrookgolfresort.com/pdf/copperheadscorecard.pdf",
  hour_open: 6,
  hour_close: 7,
  driving_range: true,
  putting_green: true,
  chipping_area: true,
  practice_bunker: true,
  riding_cart: true,
  push_cart: true,
  pro_shop: true,
  club_rental: true,
  caddie_services: true,
  lessons: true,
  locker_room_onsite: true,
  shower_onsite: true,
  lodging_onsite: false,
  clubfitting: true,
  punched_greens: false,
  sanded_greens: false,
  street_address: "36750 U.S. Highway 19 N.",
  address_locality: "Palm Harbor",
  address_region: "Florida",
  postal_code: "34684",
  forward_tee_slope: 131,
  forward_tee_rating: 69.8,
  mid_tee_slope: 140,
  mid_tee_rating: 74.8,
  long_tee_slope: 149,
  long_tee_rating: 77.7,
  fourth_tee_slope: 139,
  fourth_tee_rating: 73.1,
  fifth_tee_slope: 142,
  fifth_tee_rating: 75.9,
  latitude: 28.114430813784118, 
  longitude: -82.75315097511346,
  created_at: Time.now,
  updated_at: Time.now,
)

@courses = Course.all
puts "Adding ice to #{@courses.count} uber fancy clubhouses" unless @courses.length < 2
puts "Adding ice to the clubhouse" if @courses.length < 2

Hole.create!(
  hole_number: 1,
  course_hcap_val: 14,
  par_value: 4,
  center_green_lat: 27.831735212412138,
  center_green_long: -82.62234380224538,
  forward_tee_distance: 278,
  mid_tee_distance: 305,
  long_tee_distance: 317,
  fourth_tee_distance: 349,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 2,
  course_hcap_val: 2,
  par_value: 5,
  center_green_lat: 27.831806798478368,
  center_green_long: -82.61553513898926,
  forward_tee_distance: 458,
  mid_tee_distance: 500,
  long_tee_distance: 511,
  fourth_tee_distance: 579,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 3,
  course_hcap_val: 18,
  par_value: 3,
  center_green_lat: 27.830564120921192,
  center_green_long: -82.61484998325216,
  forward_tee_distance: 100,
  mid_tee_distance: 113,
  long_tee_distance: 127,
  fourth_tee_distance: 162,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 4,
  course_hcap_val: 8,
  par_value: 4,
  center_green_lat: 27.83101578746388,
  center_green_long: -82.61912658350862,
  forward_tee_distance: 315,
  mid_tee_distance: 347,
  long_tee_distance: 366,
  fourth_tee_distance: 399,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 5,
  course_hcap_val: 4,
  par_value: 4,
  center_green_lat: 27.830520411156026,
  center_green_long: -82.61577026432,
  forward_tee_distance: 311,
  mid_tee_distance: 327,
  long_tee_distance: 362,
  fourth_tee_distance: 380,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 6,
  course_hcap_val: 6,
  par_value: 5,
  center_green_lat: 27.829075438636764,
  center_green_long: -82.61908539187789,
  forward_tee_distance: 411,
  mid_tee_distance: 452,
  long_tee_distance: 480,
  fourth_tee_distance: 506,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 7,
  course_hcap_val: 12,
  par_value: 4,
  center_green_lat: 27.831422806863948,
  center_green_long: -82.62073742429706,
  forward_tee_distance: 286,
  mid_tee_distance: 305,
  long_tee_distance: 318,
  fourth_tee_distance: 332,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 8,
  course_hcap_val: 16,
  par_value: 3,
  center_green_lat: 27.83292250514267,
  center_green_long: -82.62259189064902,
  forward_tee_distance: 127,
  mid_tee_distance: 167,
  long_tee_distance: 179,
  fourth_tee_distance: 193,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 9,
  course_hcap_val: 10,
  par_value: 4,
  center_green_lat: 27.833790186340533,
  center_green_long: -82.62624458022034,
  forward_tee_distance: 312,
  mid_tee_distance: 324,
  long_tee_distance: 379,
  fourth_tee_distance: 398,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 10,
  course_hcap_val: 15,
  par_value: 4,
  center_green_lat: 27.829994713591795,
  center_green_long: -82.62494233811016,
  forward_tee_distance: 280,
  mid_tee_distance: 297,
  long_tee_distance: 309,
  fourth_tee_distance: 338,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 11,
  course_hcap_val: 17,
  par_value: 3,
  center_green_lat: 27.82910377625207,
  center_green_long: -82.62674683894633,
  forward_tee_distance: 99,
  mid_tee_distance: 121,
  long_tee_distance: 139,
  fourth_tee_distance: 155,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 12,
  course_hcap_val: 1,
  par_value: 4,
  center_green_lat: 27.83249456205313,
  center_green_long: -82.6296183120104,
  forward_tee_distance: 326,
  mid_tee_distance: 402,
  long_tee_distance: 412,
  fourth_tee_distance: 440,
  fifth_tee_distance: nil,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 13,
  course_hcap_val: 11,
  par_value: 4,
  center_green_lat: 27.835219744983764,
  center_green_long: -82.6300612545849,
  forward_tee_distance: 246,
  mid_tee_distance: 282,
  long_tee_distance: 296,
  fourth_tee_distance: 324,
  fifth_tee_distance: 324,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 14,
  course_hcap_val: 5,
  par_value: 5,
  center_green_lat: 27.835261094342286,
  center_green_long: -82.62491555785259,
  forward_tee_distance: 425,
  mid_tee_distance: 452,
  long_tee_distance: 485,
  fourth_tee_distance: 504,
  fifth_tee_distance: 504,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 15,
  course_hcap_val: 13,
  par_value: 3,
  center_green_lat: 27.837651812049472,
  center_green_long: -82.62497081936162,
  forward_tee_distance: 114,
  mid_tee_distance: 129,
  long_tee_distance: 180,
  fourth_tee_distance: 196,
  fifth_tee_distance: 196,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 16,
  course_hcap_val: 9,
  par_value: 4,
  center_green_lat: 27.834952853334897,
  center_green_long: -82.62371468273649,
  forward_tee_distance: 290,
  mid_tee_distance: 320,
  long_tee_distance: 341,
  fourth_tee_distance: 400,
  fifth_tee_distance: 400,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 17,
  course_hcap_val: 3,
  par_value: 5,
  center_green_lat: 27.83454484462113,
  center_green_long: -82.62837188024454,
  forward_tee_distance: 461,
  mid_tee_distance: 515,
  long_tee_distance: 530,
  fourth_tee_distance: 565,
  fifth_tee_distance: 565,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 18,
  course_hcap_val: 7,
  par_value: 4,
  center_green_lat: 27.832040233958853,
  center_green_long: -82.62765865756361,
  forward_tee_distance: 337,
  mid_tee_distance: 367,
  long_tee_distance: 381,
  fourth_tee_distance: 436,
  fifth_tee_distance: 436,
  course_id: 1,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 1,
  course_hcap_val: 5,
  par_value: 5,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 456,
  mid_tee_distance: 456,
  long_tee_distance: 521,
  fourth_tee_distance: 528,
  fifth_tee_distance: 560,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 2,
  course_hcap_val: 11,
  par_value: 4,
  center_green_long: 0.0,
  center_green_lat: 0.0,
  forward_tee_distance: 291,
  mid_tee_distance: 331,
  long_tee_distance: 359,
  fourth_tee_distance: 371,
  fifth_tee_distance: 413,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 3,
  course_hcap_val: 7,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 291,
  mid_tee_distance: 362,
  long_tee_distance: 386,
  fourth_tee_distance: 407,
  fifth_tee_distance: 442,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 4,
  course_hcap_val: 17,
  par_value: 3,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 95,
  mid_tee_distance: 134,
  long_tee_distance: 140,
  fourth_tee_distance: 163,
  fifth_tee_distance: 188,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 5,
  course_hcap_val: 1,
  par_value: 5,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 388,
  mid_tee_distance: 458,
  long_tee_distance: 526,
  fourth_tee_distance: 570,
  fifth_tee_distance: 607,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 6,
  course_hcap_val: 3,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 304,
  mid_tee_distance: 357,
  long_tee_distance: 406,
  fourth_tee_distance: 422,
  fifth_tee_distance: 452,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 7,
  course_hcap_val: 13,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 273,
  mid_tee_distance: 335,
  long_tee_distance: 345,
  fourth_tee_distance: 373,
  fifth_tee_distance: 410,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 8,
  course_hcap_val: 15,
  par_value: 3,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 124,
  mid_tee_distance: 145,
  long_tee_distance: 176,
  fourth_tee_distance: 201,
  fifth_tee_distance: 232,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 9,
  course_hcap_val: 9,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 294,
  mid_tee_distance: 343,
  long_tee_distance: 378,
  fourth_tee_distance: 392,
  fifth_tee_distance: 420,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 10,
  course_hcap_val: 15,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 295,
  mid_tee_distance: 343,
  long_tee_distance: 374,
  fourth_tee_distance: 410,
  fifth_tee_distance: 441,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 11,
  course_hcap_val: 6,
  par_value: 5,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 372,
  mid_tee_distance: 435,
  long_tee_distance: 514,
  fourth_tee_distance: 525,
  fifth_tee_distance: 567,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 12,
  course_hcap_val: 12,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 315,
  mid_tee_distance: 343,
  long_tee_distance: 343,
  fourth_tee_distance: 357,
  fifth_tee_distance: 373,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 13,
  course_hcap_val: 18,
  par_value: 3,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 102,
  mid_tee_distance: 144,
  long_tee_distance: 148,
  fourth_tee_distance: 179,
  fifth_tee_distance: 199,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 14,
  course_hcap_val: 2,
  par_value: 5,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 448,
  mid_tee_distance: 505,
  long_tee_distance: 532,
  fourth_tee_distance: 561,
  fifth_tee_distance: 590,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 15,
  course_hcap_val: 14,
  par_value: 3,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 130,
  mid_tee_distance: 160,
  long_tee_distance: 172,
  fourth_tee_distance: 182,
  fifth_tee_distance: 208,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 16,
  course_hcap_val: 4,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 294,
  mid_tee_distance: 336,
  long_tee_distance: 376,
  fourth_tee_distance: 412,
  fifth_tee_distance: 458,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 17,
  course_hcap_val: 16,
  par_value: 3,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 118,
  mid_tee_distance: 161,
  long_tee_distance: 171,
  fourth_tee_distance: 181,
  fifth_tee_distance: 206,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

Hole.create!(
  hole_number: 18,
  course_hcap_val: 10,
  par_value: 4,
  center_green_lat: 0.0,
  center_green_long: 0.0,
  forward_tee_distance: 261,
  mid_tee_distance: 328,
  long_tee_distance: 376,
  fourth_tee_distance: 390,
  fifth_tee_distance: 443,
  course_id: 2,
  created_at: Time.now,
  updated_at: Time.now,
)

@holes = Hole.all
puts "Cutting the grass on #{@holes.count.to_s} holes."
puts "If you were wondering that is a combined #{@holes.sum (:fifth_tee_distance)} yds!!"
User.create(
  first_name: "Matt",
  last_name: "Cooke",
  username: "Leafsicle",
  email: "cookem529@gmail.com",
  user_type_id: 3,
  home_course_id: 1,
  handicap: 18,
  street_address: "1600 Penn. Ave",
  address_locality: "Washington",
  address_region: "DC",
  postal_code: "20500",
)

User.create(
  first_name: "Pockets",
  last_name: "McSpruce",
  username: "Sprucey",
  email: "psprucey@gmail.com",
  user_type_id: 1,
  home_course_id: 1,
  handicap: 18,
  street_address: "42 Wallaby way",
  address_locality: "Sydney",
  address_region: "Florida",
  postal_code: "33701",
)

User.create(
  first_name: "Carl",
  last_name: "Spackler",
  username: "XTRMIN8R", # spelled weird to allow someone else to have proper spelling
  email: "CdyShack@nil.com",
  user_type_id: 2,
  home_course_id: 1,
  handicap: 3,
  street_address: "42 Wallaby way",
  address_locality: "St. Petersburg",
  address_region: "Florida",
  postal_code: "33701",
)

@users = User.all
puts "Buying Golf Clubs for #{@users.all.count} users" unless @users.length < 2
puts "Buying Golf Clubs for #{@users.all.count} user" if @users.length < 2

UserType.create(
  code: "user",
  name: "user"
)
UserType.create(
  code: "mgr",
  name: "Course Manager"
)
UserType.create(
  code: "spt",
  name: "Support"
)


puts "Grass and DB are fully seeded!"
