class User < ActiveRecord::Base
  validates_presence_of	:user_name, :on => :create, :message => "can't be blank"
    validates_presence_of :password, :on => :create, :message => "can't be blank" 
 attr_accessor :password_confirmation
  validates_confirmation_of :password

 # validate :password_not_blank
end
