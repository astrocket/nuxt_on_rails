class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.string :name
      t.string :colour

      t.timestamps
    end
  end
end
