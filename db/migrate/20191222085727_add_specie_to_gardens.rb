class AddSpecieToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :specie, :string
  end
end
