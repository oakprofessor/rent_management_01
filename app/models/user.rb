class User < ApplicationRecord
  has_many :homes
  has_many :role_users
  has_many :orders

  before_save{self.email = email.downcase}
  validates :name,  presence: true,
    length: {maximum: Settings.name_max_length}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.email_max_length},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: true
  has_secure_password
  validates :password, presence: true,
    length: {minimum: Settings.password_min_length}
  validates :phone, numericality: true, presence: true
  validates :stk, numericality: true
  validates :address, presence: true
end
