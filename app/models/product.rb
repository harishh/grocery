class Product < ActiveRecord::Base
	belongs_to :category
	validates :name, :weight_lbs, :price, presence: true
end
