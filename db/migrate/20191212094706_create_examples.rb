class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.string :some
      t.string :title
      t.string :desc

      t.timestamps
    end
  end
end
