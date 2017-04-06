class Category < ApplicationRecord
  has_and_belongs_to_many :products

  scope :search, lambda {|search_params| where(title: search_params)}
end