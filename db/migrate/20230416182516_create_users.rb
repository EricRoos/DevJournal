class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :uuid
      t.string :source

      t.timestamps
    end
    add_index :users, :uuid, unique: true
  end
end
