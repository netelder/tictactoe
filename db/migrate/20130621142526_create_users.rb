class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :username
      t.string     :password
      t.integer    :won, :default => 0
      t.integer    :lost, :default => 0
      t.references :game
    end
  end
end
