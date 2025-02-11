class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :products
  belongs_to :role, optional: true
  validates :user_name, presence: true, length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email_address, presence: true,
            uniqueness: true,
            length: { maximum: 100 },
            format: { with: VALID_EMAIL_REGEX }
  normalizes :email_address, with: ->(e) { e.strip.downcase }

  enum :user_type, { employee: 'employee', customer: 'customer', admin: 'admin'}
  before_save :manage_role

  def manage_role
    if self.customer?
      self.role_id = Role.customer_role
    end
  end

end
