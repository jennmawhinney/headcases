class CreateHairdressers < ActiveRecord::Migration
  def change
    create_table :hairdressers do |t|
      t.text :name
      t.text :discipline
      t.text :image
      t.text :blurb
      t.timestamps
    end
  end
end
