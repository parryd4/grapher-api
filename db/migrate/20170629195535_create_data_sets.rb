class CreateDataSets < ActiveRecord::Migration[5.1]
  def change
    create_table :data_sets do |t|
      t.belongs_to :user, foreign_key: true
      t.text :content
      t.boolean :public, default: true

      t.timestamps
    end
  end
end
