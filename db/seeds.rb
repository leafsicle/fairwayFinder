# This file should contain all the record creation needed to seed the database with its default values.
#  loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# create_course

require "json"
require "open-uri"

# poke_ids = (1..151).to_a

# 151.times do |index|
#   poke_id = poke_ids[index]
#   conn = Faraday.new("https://pokeapi.co")
#   response = conn.get("/api/v2/pokemon/#{poke_id}/")
#   @pokemonApi = JSON.parse(response.body, symbolize_names: true)
#   new_poke = Pokemon.create(
#     pokeid: @pokemonApi[:id],
#     name: @pokemonApi[:name],
#     iamgeurl: @pokemonApi[:sprites][:front_default],
#     # type: @pokemonApi[:types].first[:type][:name].capitalize
#   )
# end
# https://rapidapi.com/golfambit-golfambit-default/api/golf-course-finder/
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
  first_tee_slope: 112,
  first_tee_rating: 68.7,
  second_tee_slope: 113,
  second_tee_rating: 65.5,
  third_tee_slope: 114,
  third_tee_rating: 69.5,
  fourth_tee_slope: 116,
  fourth_tee_rating: 71.3,
  fifth_tee_slope: 116,
  fifth_tee_rating: 71.3,
  latitude: 27.83347,
  longitude: -82.62764,
  rating: 5,
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
  first_tee_slope: 131,
  first_tee_rating: 69.8,
  second_tee_slope: 140,
  second_tee_rating: 74.8,
  third_tee_slope: 149,
  third_tee_rating: 77.7,
  fourth_tee_slope: 139,
  fourth_tee_rating: 73.1,
  fifth_tee_slope: 142,
  fifth_tee_rating: 75.9,
  latitude: 28.114430813784118,
  longitude: -82.75315097511346,
)

@courses = Course.all
puts "Adding ice to #{@courses.count} uber fancy clubhouses" unless @courses.length < 2
puts "Adding ice to the clubhouse" if @courses.length < 2

ole.create!(
  hole_number: 1,
  course_hcap_val: 14,
  par_value: 4,
  latitude: 27.831735212412138,
  longitude: -82.62234380224538,
  first_tee_distance: 278,
  second_tee_distance: 305,
  third_tee_distance: 317,
  fourth_tee_distance: 349,
  fifth_tee_distance: 0,
  course_id: 1,
)

ole.create!(
  hole_number: 2,
  course_hcap_val: 2,
  par_value: 5,
  latitude: 27.831806798478368,
  longitude: -82.61553513898926,
  first_tee_distance: 458,
  second_tee_distance: 500,
  third_tee_distance: 511,
  fourth_tee_distance: 579,
  fifth_tee_distance: 0,
  course_id: 1,
)

ole.create!(
  hole_number: 3,
  course_hcap_val: 18,
  par_value: 3,
  latitude: 27.830564120921192,
  longitude: -82.61484998325216,
  first_tee_distance: 100,
  second_tee_distance: 113,
  third_tee_distance: 127,
  fourth_tee_distance: 162,
  fifth_tee_distance: 162,
  course_id: 1,

)

ole.create!(
  hole_number: 4,
  course_hcap_val: 8,
  par_value: 4,
  latitude: 27.83101578746388,
  longitude: -82.61912658350862,
  first_tee_distance: 315,
  second_tee_distance: 347,
  third_tee_distance: 366,
  fourth_tee_distance: 399,
  fifth_tee_distance: 399,
  course_id: 1,

)

ole.create!(
  hole_number: 5,
  course_hcap_val: 4,
  par_value: 4,
  latitude: 27.830520411156026,
  longitude: -82.61577026432,
  first_tee_distance: 311,
  second_tee_distance: 327,
  third_tee_distance: 362,
  fourth_tee_distance: 380,
  fifth_tee_distance: 380,
  course_id: 1,

)

ole.create!(
  hole_number: 6,
  course_hcap_val: 6,
  par_value: 5,
  latitude: 27.829075438636764,
  longitude: -82.61908539187789,
  first_tee_distance: 411,
  second_tee_distance: 452,
  third_tee_distance: 480,
  fourth_tee_distance: 506,
  fifth_tee_distance: 506,
  course_id: 1,

)

Hole.create!(
  hole_number: 7,
  course_hcap_val: 12,
  par_value: 4,
  latitude: 27.831422806863948,
  longitude: -82.62073742429706,
  first_tee_distance: 286,
  second_tee_distance: 305,
  third_tee_distance: 318,
  fourth_tee_distance: 332,
  fifth_tee_distance: 332,
  course_id: 1,

)

Hole.create!(
  hole_number: 8,
  course_hcap_val: 16,
  par_value: 3,
  latitude: 27.83292250514267,
  longitude: -82.62259189064902,
  first_tee_distance: 127,
  second_tee_distance: 167,
  third_tee_distance: 179,
  fourth_tee_distance: 193,
  fifth_tee_distance: 193,
  course_id: 1,

)

Hole.create!(
  hole_number: 9,
  course_hcap_val: 10,
  par_value: 4,
  latitude: 27.833790186340533,
  longitude: -82.62624458022034,
  first_tee_distance: 312,
  second_tee_distance: 324,
  third_tee_distance: 379,
  fourth_tee_distance: 398,
  fifth_tee_distance: 0,
  course_id: 1,

)

Hole.create!(
  hole_number: 10,
  course_hcap_val: 15,
  par_value: 4,
  latitude: 27.829994713591795,
  longitude: -82.62494233811016,
  first_tee_distance: 280,
  second_tee_distance: 297,
  third_tee_distance: 309,
  fourth_tee_distance: 338,
  fifth_tee_distance: 338,
  course_id: 1,

)

Hole.create!(
  hole_number: 11,
  course_hcap_val: 17,
  par_value: 3,
  latitude: 27.82910377625207,
  longitude: -82.62674683894633,
  first_tee_distance: 99,
  second_tee_distance: 121,
  third_tee_distance: 139,
  fourth_tee_distance: 155,
  fifth_tee_distance: 155,
  course_id: 1,

)

Hole.create!(
  hole_number: 12,
  course_hcap_val: 1,
  par_value: 4,
  latitude: 27.83249456205313,
  longitude: -82.6296183120104,
  first_tee_distance: 326,
  second_tee_distance: 402,
  third_tee_distance: 412,
  fourth_tee_distance: 440,
  fifth_tee_distance: 440,
  course_id: 1,

)

Hole.create!(
  hole_number: 13,
  course_hcap_val: 11,
  par_value: 4,
  latitude: 27.835219744983764,
  longitude: -82.6300612545849,
  first_tee_distance: 246,
  second_tee_distance: 282,
  third_tee_distance: 296,
  fourth_tee_distance: 324,
  fifth_tee_distance: 324,
  course_id: 1,

)

Hole.create!(
  hole_number: 14,
  course_hcap_val: 5,
  par_value: 5,
  latitude: 27.835261094342286,
  longitude: -82.62491555785259,
  first_tee_distance: 425,
  second_tee_distance: 452,
  third_tee_distance: 485,
  fourth_tee_distance: 504,
  fifth_tee_distance: 504,
  course_id: 1,

)

Hole.create!(
  hole_number: 15,
  course_hcap_val: 13,
  par_value: 3,
  latitude: 27.837651812049472,
  longitude: -82.62497081936162,
  first_tee_distance: 114,
  second_tee_distance: 129,
  third_tee_distance: 180,
  fourth_tee_distance: 196,
  fifth_tee_distance: 196,
  course_id: 1,

)

Hole.create!(
  hole_number: 16,
  course_hcap_val: 9,
  par_value: 4,
  latitude: 27.834952853334897,
  longitude: -82.62371468273649,
  first_tee_distance: 290,
  second_tee_distance: 320,
  third_tee_distance: 341,
  fourth_tee_distance: 400,
  fifth_tee_distance: 400,
  course_id: 1,

)

Hole.create!(
  hole_number: 17,
  course_hcap_val: 3,
  par_value: 5,
  latitude: 27.83454484462113,
  longitude: -82.62837188024454,
  first_tee_distance: 461,
  second_tee_distance: 515,
  third_tee_distance: 530,
  fourth_tee_distance: 565,
  fifth_tee_distance: 565,
  course_id: 1,

)

Hole.create!(
  hole_number: 18,
  course_hcap_val: 7,
  par_value: 4,
  latitude: 27.832040233958853,
  longitude: -82.62765865756361,
  first_tee_distance: 337,
  second_tee_distance: 367,
  third_tee_distance: 381,
  fourth_tee_distance: 436,
  fifth_tee_distance: 436,
  course_id: 1,

)

Hole.create!(
  hole_number: 1,
  course_hcap_val: 5,
  par_value: 5,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 456,
  second_tee_distance: 456,
  third_tee_distance: 521,
  fourth_tee_distance: 528,
  fifth_tee_distance: 560,
  course_id: 2,

)

Hole.create!(
  hole_number: 2,
  course_hcap_val: 11,
  par_value: 4,
  longitude: 0.0,
  latitude: 0.0,
  first_tee_distance: 291,
  second_tee_distance: 331,
  third_tee_distance: 359,
  fourth_tee_distance: 371,
  fifth_tee_distance: 413,
  course_id: 2,

)

Hole.create!(
  hole_number: 3,
  course_hcap_val: 7,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 291,
  second_tee_distance: 362,
  third_tee_distance: 386,
  fourth_tee_distance: 407,
  fifth_tee_distance: 442,
  course_id: 2,

)

Hole.create!(
  hole_number: 4,
  course_hcap_val: 17,
  par_value: 3,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 95,
  second_tee_distance: 134,
  third_tee_distance: 140,
  fourth_tee_distance: 163,
  fifth_tee_distance: 188,
  course_id: 2,

)

Hole.create!(
  hole_number: 5,
  course_hcap_val: 1,
  par_value: 5,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 388,
  second_tee_distance: 458,
  third_tee_distance: 526,
  fourth_tee_distance: 570,
  fifth_tee_distance: 607,
  course_id: 2,

)

Hole.create!(
  hole_number: 6,
  course_hcap_val: 3,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 304,
  second_tee_distance: 357,
  third_tee_distance: 406,
  fourth_tee_distance: 422,
  fifth_tee_distance: 452,
  course_id: 2,

)

Hole.create!(
  hole_number: 7,
  course_hcap_val: 13,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 273,
  second_tee_distance: 335,
  third_tee_distance: 345,
  fourth_tee_distance: 373,
  fifth_tee_distance: 410,
  course_id: 2,

)

Hole.create!(
  hole_number: 8,
  course_hcap_val: 15,
  par_value: 3,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 124,
  second_tee_distance: 145,
  third_tee_distance: 176,
  fourth_tee_distance: 201,
  fifth_tee_distance: 232,
  course_id: 2,

)

Hole.create!(
  hole_number: 9,
  course_hcap_val: 9,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 294,
  second_tee_distance: 343,
  third_tee_distance: 378,
  fourth_tee_distance: 392,
  fifth_tee_distance: 420,
  course_id: 2,

)

Hole.create!(
  hole_number: 10,
  course_hcap_val: 15,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 295,
  second_tee_distance: 343,
  third_tee_distance: 374,
  fourth_tee_distance: 410,
  fifth_tee_distance: 441,
  course_id: 2,

)

Hole.create!(
  hole_number: 11,
  course_hcap_val: 6,
  par_value: 5,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 372,
  second_tee_distance: 435,
  third_tee_distance: 514,
  fourth_tee_distance: 525,
  fifth_tee_distance: 567,
  course_id: 2,

)

Hole.create!(
  hole_number: 12,
  course_hcap_val: 12,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 315,
  second_tee_distance: 343,
  third_tee_distance: 343,
  fourth_tee_distance: 357,
  fifth_tee_distance: 373,
  course_id: 2,

)

Hole.create!(
  hole_number: 13,
  course_hcap_val: 18,
  par_value: 3,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 102,
  second_tee_distance: 144,
  third_tee_distance: 148,
  fourth_tee_distance: 179,
  fifth_tee_distance: 199,
  course_id: 2,

)

Hole.create!(
  hole_number: 14,
  course_hcap_val: 2,
  par_value: 5,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 448,
  second_tee_distance: 505,
  third_tee_distance: 532,
  fourth_tee_distance: 561,
  fifth_tee_distance: 590,
  course_id: 2,

)

Hole.create!(
  hole_number: 15,
  course_hcap_val: 14,
  par_value: 3,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 130,
  second_tee_distance: 160,
  third_tee_distance: 172,
  fourth_tee_distance: 182,
  fifth_tee_distance: 208,
  course_id: 2,

)

Hole.create!(
  hole_number: 16,
  course_hcap_val: 4,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 294,
  second_tee_distance: 336,
  third_tee_distance: 376,
  fourth_tee_distance: 412,
  fifth_tee_distance: 458,
  course_id: 2,

)

Hole.create!(
  hole_number: 17,
  course_hcap_val: 16,
  par_value: 3,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 118,
  second_tee_distance: 161,
  third_tee_distance: 171,
  fourth_tee_distance: 181,
  fifth_tee_distance: 206,
  course_id: 2,

)

Hole.create!(
  hole_number: 18,
  course_hcap_val: 10,
  par_value: 4,
  latitude: 0.0,
  longitude: 0.0,
  first_tee_distance: 261,
  second_tee_distance: 328,
  third_tee_distance: 376,
  fourth_tee_distance: 390,
  fifth_tee_distance: 443,
  course_id: 2,

)

@holes = Hole.all
puts "Cutting the grass on #{@holes.count.to_s} holes."
puts "If you were wondering that is a combined #{@holes.sum (:fifth_tee_distance)} yds!!"
# User.create(
#   first_name: "Matt",
#   last_name: "Cooke",
#   username: "Leafsicle",
#   email: "cookem529@gmail.com",
#   home_course_id: 1,
#   handicap: 18,
#   street_address: "1600 Penn. Ave",
#   address_locality: "Washington",
#   address_region: "DC",
#   postal_code: "20500",
# )

# User.create(
#   first_name: "Pockets",
#   last_name: "McSpruce",
#   username: "Sprucey",
#   email: "psprucey@gmail.com",
#   home_course_id: 1,
#   handicap: 18,
#   street_address: "42 Wallaby way",
#   address_locality: "Sydney",
#   address_region: "Florida",
#   postal_code: "33701",

# )

# User.create(User
#   first_name: "Carl",
#   last_name: "Spackler",
#   username: "XTRMIN8R", # spelled weird to allow someone else to have proper spelling
#   email: "CdyShack@nil.com",
#   home_course_id: 1,
#   handicap: 3,
#   street_address: "42 Wallaby way",
#   address_locality: "St. Petersburg",
#   address_region: "Florida",
#   postal_code: "33701",
# )

@users = User.all
puts "Buying Golf Clubs for #{@users.all.count} users" unless @users.length < 2
puts "Buying Golf Clubs for #{@users.all.count} user" if @users.length < 2

puts "Grass and DB are fully seeded!"
