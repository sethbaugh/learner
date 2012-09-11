class AddAwesomenessToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :awesomeness, :integer
  end
end
