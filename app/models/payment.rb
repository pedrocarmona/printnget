class Payment < ActiveRecord::Base
	has_one :order
end
