class Order < ActiveRecord::Base
	include OrderStatus

	has_many :documents
	belongs_to :payment

end
