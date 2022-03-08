class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :contact
      t.string :full_name
      t.date :dob

      t.timestamps
    end
  end
end
