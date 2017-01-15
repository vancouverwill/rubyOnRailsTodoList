class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.boolean :done
      t.references :todo_list, foreign_key: true

      t.timestamps
    end
  end
end
