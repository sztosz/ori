# == Schema Information
#
# Table name: dumps
#
#  id           :integer          not null, primary key
#  ecu_id       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  hw           :string
#  sw           :string
#  content      :integer          not null
#  content_size :integer
#

FactoryGirl.define do
  factory :dump do
    name 'MyString'
    ecu nil
  end
end
