class CreateMovieks < ActiveRecord::Migration
  def change
    create_table :movieks do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
