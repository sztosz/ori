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
  validates :hw, :sw, :content, :content_size, :ecu_id, presence: true
  validates :content, file_size: { less_than: 5.megabytes }

  mount_uploader :content, DumpUploader

  before_validation :set_content_size, on: :create

  private

  def set_content_size
    self.content_size = content.file.size if content.present? && content_changed?
  end
end
