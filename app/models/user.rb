class User < ActiveRecord::Base
  has_one :rackspace_account_metadata
  has_one :rackspace_region, :through => :rackspace_account_metadata

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
end
