class Gladiator < ActiveRecord::Base
	belongs_to :arena

	validates :name, :weapon, presence: true
	validates :weapon, inclusion: { in: %w(Club Spear Trident),
    message: "%{value} is not a valid weapon" }
end