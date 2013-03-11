#encoding: utf-8
class UserSoon < ActiveRecord::Base
  attr_accessible :name, :email
  validates_presence_of   :email, message: "很抱歉，请填写Email | The Email appears to be missing "
  validates_format_of     :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i , message: "Email format incorrect | emial 格式不正确"
  validates_uniqueness_of :email, message: "Email已被使用 | The Email has been registed" 
  validates_length_of     :email, maximum: 32 , message: "EMAIL不得超过32个字符 | Email is no more than 32 letters"

  validates_presence_of   :name,  message: "很抱歉，请填写邮箱信息 | The Email appears to be missing"
  validates_length_of     :name,  within:  2..32, :too_long => "请输入一个较短的用户名 | Please enter a shorter name",
                                                  :too_short => "请输入一个较长的用户 | pick a longer name"
  validates_uniqueness_of :name,  message: "此用户名已被使用 | The Username has been occupied"
  # validates :name, uniqueness: true, presence: true,:length => { :maximum => 30 }
end
