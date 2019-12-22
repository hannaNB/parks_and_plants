class CreateFlourishes < ActiveRecord::Migration[6.0]
  def change
    create_table :flourishes do |t|
      t.text :description
      t.references :plant, null: false, foreign_key: true
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
