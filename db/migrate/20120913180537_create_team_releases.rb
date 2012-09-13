class CreateTeamReleases < ActiveRecord::Migration
  def change
    create_table :team_releases do |t|
      t.date :date
      t.references :team

      t.timestamps
    end
    add_index :team_releases, :team_id
  end
end
