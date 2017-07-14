class Subreddit < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :posts

    validates_presence_of :title, :description, :content_options, :theme, :public_private, :user_id

    enum content_options: ["Text Only", "URL's and Media", "Both Text and Media"]
    enum public_private: ["Public", "Private"]
end