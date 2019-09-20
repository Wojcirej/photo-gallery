class Admin < ApplicationRecord
  devise :database_authenticatable, :recoverable, :validatable,
         :registerable, authentication_keys: [:login]

  validates :login, presence: true
  has_many :photos, foreign_key: :uploader_id

  default_scope -> { order("created_at ASC") }
end
