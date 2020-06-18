class Contestant < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :entries

  def self.total_entries
    Contestant.sum("entries")
  end

  def self.winner
    names_by_entries = []
    @contestants = Contestant.all

    @contestants.each do |contestant|
      names_by_entries.fill(contestant.name, names_by_entries.size, contestant.entries)
    end
    names_by_entries.sample
  end
end
