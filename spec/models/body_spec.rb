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

require 'rails_helper'

RSpec.describe Body, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
