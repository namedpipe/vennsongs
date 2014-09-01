class Song < ActiveRecord::Base
  attr_accessible :artist, :critic, :rank, :title
end
