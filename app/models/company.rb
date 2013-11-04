class Company < ActiveRecord::Base
	has_many :stores
    belongs_to :owner

	attr_accessible :url, :name, :nif, :phone, :owner_id

    validates_format_of :url, :with => /\A((http|https):\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
    validates_format_of :phone, :with => /\A\+?[0-9]{3}-?[0-9]{6,12}\z/ix
    validates_format_of :nif, :with => /\A[0-9]{9}\z/ix
end
