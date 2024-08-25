class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :available, -> { where(is_taken: [false, nil]) }

  def formatted_created_at
    created_at.strftime('%Y-%m-%d %H:%M:%S')
  end
end