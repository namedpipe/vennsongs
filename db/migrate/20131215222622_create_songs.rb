class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :critic
      t.integer :rank

      t.timestamps
    end
  end
end
