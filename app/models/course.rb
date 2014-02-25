class Course < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  has_many :sections, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy

end
