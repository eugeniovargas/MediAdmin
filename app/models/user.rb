class User < ActiveRecord::Base
  has_many :photos
  has_many :user_key_value
  accepts_nested_attributes_for :photos
  validates :nombre, :apellido, :email, :password, presence: true
end
