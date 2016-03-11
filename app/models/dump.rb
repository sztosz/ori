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
#  file       :integer          not null
#

class Dump < ActiveRecord::Base
  belongs_to :ecu
  validates :hw, :sw, :content, :ecu_id, presence: true
  validates :content, file_size: { less_than: 5.megabytes }
  mount_uploader :content, DumpUploader
end
