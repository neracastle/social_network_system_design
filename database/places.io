Table places {
  place_id integer [primary key]
  country_id integer
  city_id integer
  street varchar
}

Table Countries {
  country_id integer [primary key]
  name varchar
}

Table Cities {
  city_id integer [primary key]
  name varchar
}

Table places_stat {
  place_id integer [primary key]
  posts_cnt bigint
  last_post timestamp
}

Ref: "places"."place_id" < "places_stat"."place_id"

Ref: "Countries"."country_id" < "places"."country_id"

Ref: "Cities"."city_id" < "places"."city_id"
