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

require 'rails_helper'

RSpec.describe Engine, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
