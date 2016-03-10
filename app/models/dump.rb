# == Schema Information
#
# Table name: dumps
#
#  id         :integer          not null, primary key
#  ecu_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  hw         :string
#  sw         :string
#

class Dump < ActiveRecord::Base
  belongs_to :ecu
  validates :hw, :sw, :ecu_id, presence: true
end
