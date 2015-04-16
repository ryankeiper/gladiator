class Arena < ActiveRecord::Base
	has_many :gladiators

	validates :name, presence: true
end