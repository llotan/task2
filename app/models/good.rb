

class Good < ApplicationRecord
  has_many :gimgs, dependent: :destroy
end
