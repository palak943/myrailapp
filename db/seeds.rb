# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seed data for Authors
10.times do |n|
    Author.create!(
      name: "Author #{n+1}",
      email: "author#{n+1}@example.com",
      password_digest: "password#{n+1}",
      followers_count: rand(100..1000),
      about: "Bio for Author #{n+1}"
    )
  end
  
  # Seed data for Topics
  10.times do |n|
    Topic.create!(
      name: "Topic #{n+1}"
    )
  end
  
  # Seed data for Posts
  10.times do |n|
    Post.create!(
      title: "Post #{n+1}",
      topic_id: rand(1..10),
      author_id: rand(1..10),
      text: "Content for Post #{n+1}",
      published_at: Time.now - n.days,
      likes_count: rand(10..100),
      comments_count: rand(5..50),
      view_count: rand(100..1000),
      reading_time: rand(5..20)
    )
  end
  
  # Seed data for Comments
  10.times do |n|
    Comment.create!(
      post_id: rand(1..10),
      author_id: rand(1..10),
      text: "Comment #{n+1} for a post."
    )
  end
  
  # Seed data for Playlists
  10.times do |n|
    Playlist.create!(
      name: "Playlist #{n+1}",
      author_id: rand(1..10)
    )
  end
  
  # Seed data for Playlist Post Items
  10.times do |n|
    PlaylistPostItem.create!(
      playlist_id: rand(1..10),
      post_id: rand(1..10)
    )
  end
  
  # Seed data for Likes
  10.times do |n|
    Like.create!(
      post_id: rand(1..10),
      author_id: rand(1..10)
    )
  end
  
  # Seed data for Save For Laters
  10.times do |n|
    SaveForLater.create!(
      post_id: rand(1..10),
      author_id: rand(1..10)
    )
  end
  
  # Seed data for Payments
  10.times do |n|
    Payment.create!(
      amount: rand(10..100) * 100,
      status: ['completed', 'pending', 'failed'].sample,
      payment_session_id: "session_#{n+1}",
      author_id: rand(1..10)
    )
  end
  
  # Seed data for Drafts
  10.times do |n|
    Draft.create!(
      title: "Draft #{n+1}",
      featured_image: "image_#{n+1}.jpg",
      topic_name: "Topic #{n+1}",
      text: "Content for Draft #{n+1}",
      author_id: rand(1..10),
      topic_id: rand(1..10)
    )
  end
  