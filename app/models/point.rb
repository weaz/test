# == Schema Information
# Schema version: 20100423151640
#
# Table name: points
#
#  id         :integer         not null, primary key
#  value      :integer         default(1)
#  post_id    :integer         not null
#  user_id    :integer         not null
#  created_at :datetime
#  updated_at :datetime
#

class Point < ActiveRecord::Base

  attr_accessible :post_id, :user_id

  validates_presence_of :post_id, :user_id

  belongs_to :post
  belongs_to :user
end
