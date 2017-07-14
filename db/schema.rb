# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170712224153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commentdownvotes", force: :cascade do |t|
    t.bigint "comment_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_commentdownvotes_on_comment_id"
    t.index ["user_id"], name: "index_commentdownvotes_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "parent_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted"
    t.bigint "post_id"
    t.bigint "user_id"
    t.integer "comment_karma", default: 0
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "commentupvotes", force: :cascade do |t|
    t.bigint "comment_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_commentupvotes_on_comment_id"
    t.index ["user_id"], name: "index_commentupvotes_on_user_id"
  end

  create_table "downvotes", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_downvotes_on_post_id"
    t.index ["user_id"], name: "index_downvotes_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "media"
    t.string "url"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subreddit_id"
    t.bigint "user_id"
    t.integer "post_type"
    t.integer "post_karma", default: 0
    t.index ["subreddit_id"], name: "index_posts_on_subreddit_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "savedcomments", id: false, force: :cascade do |t|
    t.bigint "comment_id", null: false
    t.bigint "user_id", null: false
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savedposts", id: false, force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "user_id", null: false
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subreddits", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "sidebar"
    t.integer "content_options"
    t.text "theme"
    t.integer "public_private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_subreddits_on_user_id"
  end

  create_table "upvotes", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_upvotes_on_post_id"
    t.index ["user_id"], name: "index_upvotes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted"
  end

  add_foreign_key "commentdownvotes", "comments"
  add_foreign_key "commentdownvotes", "users"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "commentupvotes", "comments"
  add_foreign_key "commentupvotes", "users"
  add_foreign_key "downvotes", "posts"
  add_foreign_key "downvotes", "users"
  add_foreign_key "posts", "subreddits"
  add_foreign_key "posts", "users"
  add_foreign_key "subreddits", "users"
  add_foreign_key "upvotes", "posts"
  add_foreign_key "upvotes", "users"
end
