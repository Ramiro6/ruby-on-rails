class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.integer :user_id
      t.string :email
      t.text :description
      t.timestamps
    end
  end
end
