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

FactoryGirl.define do
  factory :engine do
    name 'MyString'
    body nil
  end
end
