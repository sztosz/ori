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

FactoryGirl.define do
  factory :body do
    name 'MyString'
    brand :brand
  end
end
