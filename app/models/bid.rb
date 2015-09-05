class Bid < ActiveRecord::Base
	#validates :amount , presence: true
	validates_presence_of :amount
	validates_numericality_of :amount
	validates :amount, length: { in: 5..9}
	belongs_to :user
end
