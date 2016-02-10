class Product < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true
#	validates :description, presence: true
	validates :price, presence: true, numericality: true
	validates :category, presence: true
	validates :seller_id, presence: true

	def self.search(search,form)
	  if search
	    find(:all, :conditions => ["#{form} LIKE ?", "%#{search}%"])
	  else
   		 find(:all)
  	  end
	end


end
