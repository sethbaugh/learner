class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :confrence

      t.timestamps
    end
    add_index :teams, :confrence_id
  end
end
