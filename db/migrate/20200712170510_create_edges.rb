class CreateEdges < ActiveRecord::Migration[6.0]
  def change
    create_table :edges do |t|
      t.string :name
      t.string :source
      t.string :destiny
      t.integer :value
    end
  end
end
