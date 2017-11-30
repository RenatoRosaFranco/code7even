class Category < ApplicationRecord
  include Filterable

  self.table_name = 'categories'
  self.primary_key = 'id'

  has_many   :post
  belongs_to :user

  validates :name,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: {minimum: 3, maximum: 30}

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 245}

  validates :tags,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 65}
end
