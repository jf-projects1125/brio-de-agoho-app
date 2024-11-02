class Salesperson < ApplicationRecord
  scope :active, -> { where(status: true) }
  scope :inactive, -> { where(status: false) }

  has_many :sales
end
