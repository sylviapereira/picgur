class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :art_maker
      t.string :art_name
      t.string :url

      t.timestamps null: false
    end
  end
end
