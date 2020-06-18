class Contestant < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :entries

  def self.total_entries
    Contestant.sum("entries")
  end
end
