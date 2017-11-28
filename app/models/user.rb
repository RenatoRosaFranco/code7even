class User < ApplicationRecord
  self.table_name = 'users'
  self.primary_key = 'id'

  has_many :categories, dependent: :destroy
  has_many :members,    dependent: :destroy
  has_many :partners,   dependent: :destroy
  has_many :posts,      dependent: :destroy
  has_many :services,   dependent: :destroy

  mount_uploader :avatar, FileUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
