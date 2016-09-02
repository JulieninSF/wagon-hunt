class Client < ApplicationRecord
validates :name, presence: true, uniqueness: true
#pour écrire un client, le nom doit être présent et unique
validates :url, presence: true, uniqueness: true
validates :tagline, presence: true, uniqueness: true
end
