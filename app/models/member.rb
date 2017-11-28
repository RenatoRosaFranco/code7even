class Member < ApplicationRecord
  self.table_name = 'members'
  self.primary_key = 'id'

  mount_uploader :avatar, FileUploader

  validates :avatar,
            format: {with: /\.(png|jpeg|jpg|bmp)/i}

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maxmimum: 30}

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3,maximum: 200}

  validates :occupation,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum:3, maximum: 30}

  validates :facebook, :twitter, :linkedin,
            presence: false,
            uniqueness: false,
            allow_blank: true,
            length: {minimum: 3, maximum: 245}

  validates :user_id,
            presence: true,
            uniqueness: false,
            numericality: {only_integer: true}
end
