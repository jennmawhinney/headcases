class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :name
      t.text :technique
      t.text :url
      t.text :embed_url
      t.text :blurb
      t.integer :hairdresser_id
      t.timestamps
    end
  end
end
