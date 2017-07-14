class Commentdownvote < ApplicationRecord
  belongs_to :comment
  belongs_to :user

  validates :comment, uniqueness: { scope: :user }
  validates :user, uniqueness: { scope: :comment }
  validate :userfaved
  after_save :update_comment

  def userfaved
      if Commentupvote.where(:user_id=> self.user_id, :comment_id => self.comment_id).any?
          errors.add(:user_id, 'already voted on this')
      end
  end

  def update_comment 
    self.comment.comment_karma -= 1
    self.comment.save
  end
end
