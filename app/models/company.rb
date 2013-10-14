class Company < ActiveRecord::Base
	has_many :stores

	attr_accessible :url, :name, :nif, :phone
end
