class Salesperson < ApplicationRecord
  scope :active, -> { where(status: true).order(name: :asc) }
  scope :inactive, -> { where(status: false).order(name: :asc) }

  has_many :sales

  def active
    return self.status ? 'Active' : 'Inactive'
  end
end
