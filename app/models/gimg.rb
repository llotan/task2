class Gimg < ApplicationRecord
  belongs_to :good
  validates :good_id, presence: true
end
