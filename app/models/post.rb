# == Schema Information
# Schema version: 20100423151640
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  body       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  
  attr_accessible :body, :user, :created_at

  belongs_to :user
  has_many :points

  validates_presence_of :body
  validates_length_of   :body, :maximum => 160

end
