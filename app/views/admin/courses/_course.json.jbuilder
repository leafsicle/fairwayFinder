json.extract! course,
:id,
:hole_count,
:membership,
:phone,
:website_url,
:hour_open,
:hour_close,
:driving_range,
:putting_green,
:chipping_area,
:practice_bunker,
:riding_cart,
:push_cart,
:pro_shop,
:club_rental,
:caddie_services,
:lessons,
:locker_room_onsite,
:shower_onsite,
:lodging_onsite,
:clubfitting,
:punched_greens,
:sanded_greens,
:street_address,
:address_locality,
:address_region,
:postal_code,
:created_at,
:updated_at,
:course_name
json.url course_url(course, format: :json)