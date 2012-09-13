class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.date :date
      t.references :team_release

      t.timestamps
    end
    add_index :articles, :team_release_id
  end
end
