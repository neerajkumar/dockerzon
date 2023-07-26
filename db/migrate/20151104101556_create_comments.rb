class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :description
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
