class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :attachment
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
