class CreateTablePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_songs
      t.boolean :allow_create_artists
      t.string :song_list_order
      t.string :artist_sort_order
    end
  end
end