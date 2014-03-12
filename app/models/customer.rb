class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         :confirmable

  attr_accessible :quotes_attributes, :first_name, :last_name, :email, :password, :password_confirmation

  has_many :quotes, dependent: :destroy
  accepts_nested_attributes_for :quotes


end