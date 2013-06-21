class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string      :board
      t.integer     :last_player
      t.references  :user
      t.references  :user
    end
  end
end
