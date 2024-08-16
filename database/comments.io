Table post_comments {
  id bigint [primary key]
  post_id bigint
  user_id integer
  body text
  created_at timestamp
}
