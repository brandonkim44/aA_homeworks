class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    start = Time.now
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
    finish = Time.now
    p diff = (finish - start)
  end

  def better_tracks_query
    start = Time.now
    albums = self.albums.includes(:tracks)
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end
    tracks_count
    finish = Time.now
    p diff = (finish - start)
  end
end
