class UserKeyValue < ActiveRecord::Base
  belongs_to :users
  validates :key, :value, presence: true
end