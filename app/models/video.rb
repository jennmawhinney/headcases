# == Schema Information
#
# Table name: videos
#
#  id             :integer          not null, primary key
#  name           :text
#  technique      :text
#  url            :text
#  embed_url      :text
#  blurb          :text
#  hairdresser_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#  user_id        :integer
#

class Video < ActiveRecord::Base
  belongs_to :hairdresser
  belongs_to :user
  has_many :favorites, as: :favorited, dependent: :destroy
end
