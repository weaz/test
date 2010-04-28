# == Schema Information
# Schema version: 20100423151640
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#  remember_token     :string(255)
#  admin              :boolean
#

require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :email => "value for email"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
