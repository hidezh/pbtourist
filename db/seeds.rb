# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(:name => 'admin',:email => 'pbtourist@pbtourist.com', :password => 'pbtourist2013', :password_confirmation => 'pbtourist2013', :admin => true)
User.create!(:name => 'drannls',:email => 'liangshuo007@qq.com', :password => 'pb20120705**', :password_confirmation => 'pb20120705**', :admin => true)
User.create!(:name => 'hide',:email => '177365340@qq.com', :password => 'zhanghui', :password_confirmation => 'zhanghui', :admin => true)