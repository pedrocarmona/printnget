class Document < ActiveRecord::Base
	belongs_to :order
	belongs_to :options
end
