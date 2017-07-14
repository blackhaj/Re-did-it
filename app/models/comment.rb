class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    has_many :comments
    has_many :commentupvotes, dependent: :destroy
    has_many :commentdownvotes, dependent: :destroy

    validates_presence_of :body, :user_id, :post_id

    def score
        commentupvotes.count - commentdownvotes.count
    end
end