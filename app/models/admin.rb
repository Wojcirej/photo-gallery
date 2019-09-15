class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :validatable,
         authentication_keys: [:login]
  #:registerable, :rememberable, :confirmable

  validates :login, presence: true
  has_many :photos, foreign_key: :uploader_id
end
