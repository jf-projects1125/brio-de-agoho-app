class Affiliate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
  end

  has_one_attached :attached_id

  has_many :sales

  def ref_code
    return self.id.to_s.rjust(4, '0')
  end

  def payout
    return self.sales.any? ? self.sales.sum(:payout) : 0
  end

  def last_payment
    return self.sales.any? ? self.sales.last.updated_at.strftime("%B %d, %Y") : ''
  end
end
