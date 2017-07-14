class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :savedcomments, through: :savedcomments, class_name: "Comments", foreign_key: "comment_id"
    has_many :savedposts, through: :savedposts, class_name: "Posts", foreign_key: "post_id"
    has_many :subreddits #should these be plural??
    # has_many :messages

    validates_presence_of :email, :username, :password
    validates :password, length: { minimum: 6 }
    # validates :password, confirmation: true
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    validates :email, length: { minimum: 6 } 
end

