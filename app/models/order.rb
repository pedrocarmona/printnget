class Order < ActiveRecord::Base
	has_many :documents
	belongs_to :payment
end
