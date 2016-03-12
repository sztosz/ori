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

class Dump < ActiveRecord::Base
  belongs_to :ecu
  validates :content, :content_size, :ecu_id, presence: true
  validates :content, file_size: { less_than: 5.megabytes }

  mount_uploader :content, DumpUploader

  before_validation :set_content_size, on: [:create, :update]

  scope :search_hw, -> (query) { where('hw ILIKE ?', "%#{query}%") if query.present? }
  scope :search_sw, -> (query) { where('sw ILIKE ?', "%#{query}%") if query.present? }
  scope :search_ecu, -> (query) { joins(:ecu).where('ecus.name ILIKE ?', "%#{query}%") if query.present? }
  scope :search_engine, -> (query) { joins(ecu: :engine).where('engines.name ILIKE ?', "%#{query}%") if query.present? }
  scope :search_body, -> (query) { joins(ecu: { engine: :body }).where('bodies.name ILIKE ?', "%#{query}%") if query.present? }
  scope :search_brand, -> (query) { joins(ecu: { engine: { body: :brand } }).where('brands.name ILIKE ?', "%#{query}%") if query.present? }

  private

  def set_content_size
    self.content_size = content.file.size if content.present? && content_changed?
  end
end
