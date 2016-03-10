# == Schema Information
#
# Table name: ecus
#
#  id         :integer          not null, primary key
#  name       :string
#  engine_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ecu < ActiveRecord::Base
  belongs_to :engine
  validates :name, :engine_id, presence: true
end
