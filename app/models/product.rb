class Product < ActiveRecord::Base
	belongs_to :category
	validates :name, :weight_lbs, :price, presence: true
end
def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end