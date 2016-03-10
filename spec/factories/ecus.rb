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

FactoryGirl.define do
  factory :ecu do
    name 'MyString'
    engine nil
  end
end
