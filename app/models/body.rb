class Body < ActiveRecord::Base
  belongs_to :brand
  validates :name, :brand_id, presence: true
end
