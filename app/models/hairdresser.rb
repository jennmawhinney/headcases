# == Schema Information
#
# Table name: hairdressers
#
#  id         :integer          not null, primary key
#  name       :text
#  discipline :text
#  image      :text
#  blurb      :text
#  created_at :datetime
#  updated_at :datetime
#

class Hairdresser < ActiveRecord::Base
  has_many :videos
end
