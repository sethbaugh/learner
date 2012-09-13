class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.date :date
      t.references :TeamRelease

      t.timestamps
    end
    add_index :articles, :TeamRelease_id
  end
end
