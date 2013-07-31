class CreateShorturls < ActiveRecord::Migration
  def change
    create_table :shorturls do |t|
      t.string :userurl
      t.string :shorturl

      t.timestamps
    end
  end
end
