class CreateCustomCharts < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_charts do |t|
      t.belongs_to :data_set, foreign_key: true
      t.string :x
      t.string :y
      t.string :color, default: "red"
      t.boolean :grid, default: false

      t.timestamps
    end
  end
end
