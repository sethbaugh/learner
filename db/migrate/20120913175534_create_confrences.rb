class CreateConfrences < ActiveRecord::Migration
  def change
    create_table :confrences do |t|
      t.string :name
      t.references :sport

      t.timestamps
    end
    add_index :confrences, :sport_id
  end
end
