class User < ActiveRecord::Base
  belongs_to :ticketbill
  belongs_to :package
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation,:name,:age,:gender,:address, :mobile
end
