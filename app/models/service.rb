class Service < ApplicationRecord
  self.table_name = 'services'
  self.primary_key = 'id'
  belongs_to :user

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 30}

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 200}

  validates :tags,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 65}

  validates :user_id,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            numericality: {only_integer: true}
end
