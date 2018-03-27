class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :date
      t.text :body
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
