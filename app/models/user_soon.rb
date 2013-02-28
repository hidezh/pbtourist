class UserSoon < ActiveRecord::Base
  attr_accessible :name, :email
  validates :email, uniqueness: true, presence: true, format: { with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :name, uniqueness: true, presence: true,:length => { :maximum => 30 }
end
