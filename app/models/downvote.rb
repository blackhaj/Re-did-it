class Downvote < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :post, uniqueness: { scope: :user }
  validates :user, uniqueness: { scope: :post }
  validate :userfaved
  after_save :update_post

  def userfaved
      if Upvote.where(:user_id=> self.user_id, :post_id => self.post_id).any?
          errors.add(:user_id, 'already voted on this')
      end
  end

  def update_post 
    self.post.post_karma -= 1
    self.post.save
  end

end
