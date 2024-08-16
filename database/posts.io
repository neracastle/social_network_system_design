Table posts {
  id bigint [primary key]
  user_id integer
  place_id integer
  message text
  created_at timestamp
  updated_at timestamp
}

Table post_images {
  post_id bigint
  photo_id uuid [note: "изображения будут лежать на blob-хранилище"]
}

Ref: posts.id < post_images.post_id
