class Category < ActiveRecord::Base
	has_many :products
	validates :name, presence: true ,uniqueness: true

end
def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  where("content LIKE ?", "%#{search}%")
end
