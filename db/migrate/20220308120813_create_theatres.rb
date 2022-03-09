class CreateTheatres < ActiveRecord::Migration[6.1]
  def change
    create_table :theatres do |t|
      t.string :t_name
      t.string :t_address
      t.integer :t_contact

      t.timestamps
    end
  end
end
