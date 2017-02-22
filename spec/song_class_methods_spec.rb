require 'spec_helper'
require 'pry'

describe "Song Class Methods" do
  describe '.create' do
    it 'instantiates and saves the song, and it returns the new song that was created' do
      song = Song.create
      expect(song).to be_a(Song)
      expect(Song.all).to include(song)
    end
  end

  
end
