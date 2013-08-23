class StaticPagesController < ApplicationController
	skip_authorization_check
	def welcome
	end

	def help
	end

	def contacts
	end

	def faqs
	end
end
