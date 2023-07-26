class CreateJavelins < ActiveRecord::Migration[7.0]
  def change
    create_table :javelins do |t|
      t.integer :thrown

      t.timestamps
    end
  end
end
