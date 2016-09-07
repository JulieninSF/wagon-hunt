class Client < ApplicationRecord

belongs_to :user
validates :name, presence: true, uniqueness: true
#pour écrire un client, le nom doit être présent et unique
validates :url, presence: true, uniqueness: true
validates :tagline, presence: true, uniqueness: true
validates :category, inclusion: { in: %w(CEO CFO CMO),
    message: "%{value} is not a valid category" }

end
