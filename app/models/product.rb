class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  scope :with_categories, lambda {|search_params| joins(:categories).where(categories:{ title: search_params})
                                             .having("count(categories.title) = #{search_params.count}")
                                             .group(:id)}
end