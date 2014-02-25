# == Schema Information
#
# Table name: contents
#
#  id         :integer          not null, primary key
#  source_url :string(255)
#  text       :text
#  section_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Content < ActiveRecord::Base

  belongs_to :section
  
end
