class Photo < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :name, :presence => true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :user, :dependent => :destroy
  has_many :tags, :dependent => :destroy
  has_many :users, through: :tags
end
