class Partner < ApplicationRecord
  self.table_name = 'partners'
  self.primary_key = 'id'

  belongs_to :user
  mount_uploader :logo, FileUploader

  validates :logo,
            uniqueness: false,
            format: {with: /^\.(bmp|png|jpg|jpeg)/}

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 30}

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 400}

  validates :link,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 245}

  validates :tags,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 45}

  validates :user_id,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            numericality: {only_integer: true}
end
