class Post < ApplicationRecord
  self.table_name = 'posts'
  self.primary_key = 'id'

  belongs_to :category, dependent: :destroy
  belongs_to :user

  scope :published, ->{ where(published: true) }
  scope :unpublished, ->{ where(published: false) }

  validates :title,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 30}

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 145}

  validates :content,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 3000}

  validates :tags,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 65}

  validates :user_id, :category_id,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            numericality: {only_integer: true}
end
