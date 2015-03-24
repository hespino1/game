class Player < ActiveRecord::Base
	validates :name, :presence => {:message => "can't be empty."}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :username, :presence => {:message => "can't be empty."}, uniqueness: true, length: {minimum: 5, maximum: 20}
	validates :points, :numericality => { :greater_than_or_equal_to => 0 }
	validates :active, :presence => {:message => "can't be empty."}

	# => validates :name, format: { with: /\A[a-zA-Z]+\z/,
    # => message: "only allows letters" }
end
