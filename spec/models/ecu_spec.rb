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

require 'rails_helper'

RSpec.describe Ecu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
