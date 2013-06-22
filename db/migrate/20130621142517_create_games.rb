class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string        :board, :default => "eeeeeeeee"
      t.integer       :last_player_id
      t.references    :user_1
      t.references    :user_2
    end
  end
end
