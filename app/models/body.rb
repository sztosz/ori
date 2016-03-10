# == Schema Information
#
# Table name: bodies
#
#  id         :integer          not null, primary key
#  name       :string
#  brand_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Body < ActiveRecord::Base
  belongs_to :brand
  has_many :engines
  validates :name, :brand_id, presence: true
end
