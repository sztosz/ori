# == Schema Information
#
# Table name: engines
#
#  id         :integer          not null, primary key
#  name       :string
#  body_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Engine < ActiveRecord::Base
  belongs_to :body
  validates :name, :body_id, presence: true
end
