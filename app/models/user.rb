# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :text
#  last_name       :text
#  email           :text
#  password_digest :text
#  admin           :boolean          default("false")
#  image           :text
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :favorites, :dependent => :destroy
  has_many :favorited_videos, through: :favorites, source: :favorited, source_type: 'Video'
end
