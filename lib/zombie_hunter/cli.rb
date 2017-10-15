require 'zombie_hunter'
require 'thor'

module ZombieHunter
  class CLI < Thor
    desc "make_zombie", "make zombie process."
    def make_zombie
      ZombieMaker.make
      sleep 3600
    end
  end
end
