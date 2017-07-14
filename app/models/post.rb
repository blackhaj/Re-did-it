class Post < ApplicationRecord
    has_and_belongs_to_many :users, :join_table => :savedposts
    # belongs_to :author, class_name: "User", foreign_key: "user_id" #check this
    has_many :comments
    belongs_to :subreddit, optional: true
    has_many :upvotes, dependent: :destroy
    has_many :downvotes, dependent: :destroy

    # validates_presence_of :title, :type, :user_id
    # validates :body, presence: true, if: :type == 0

    

end