class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.boolean :public, default: false

      t.timestamps null: false
    end
  end
end
