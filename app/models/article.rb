class Article < ApplicationRecord
  validates :title, presence: true, length: { minumum: 6, maximum: 200 }
  validates :description, length: { minimum: 10 }
end
