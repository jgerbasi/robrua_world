class Comment < ActiveRecord::Base

	# Validations
	validates_presence_of :content, :name, :email
	validates_uniqueness_of :email
	validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([a-z0-9.-]+\.)+(com|edu|org|net|gov|mil|biz|info))$/i, :message => "is not a valid format"

end
