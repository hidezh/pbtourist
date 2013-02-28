class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable,
          :confirmable,
          :token_authenticatable,
          :invitable,
          :omniauthable, omniauth_providers: [:weibo, :qq_connect]
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :uid, :provider,:name,:admin,:avatar,:sign
  # attr_accessible :title, :body

  validates :email, uniqueness: true, presence: true, format: { with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :name, uniqueness: true, presence: true,:length => { :maximum => 30 }
end
