class Contestant < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :entries
end
