class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.references :project, null: false, foreign_key: true
      t.string :status
      t.string :title

      t.timestamps
    end
  end
end
