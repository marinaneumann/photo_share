class Tag < ActiveRecord::Base
  validates :photo_id, :presence => true
  validates :user_id, :presence => true


  belongs_to :photo
  belongs_to :user
end
