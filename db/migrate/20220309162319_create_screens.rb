class CreateScreens < ActiveRecord::Migration[6.1]
  def change
    create_table :screens do |t|
      t.string :s_name
      t.string :s_type

      t.timestamps
    end
  end
end
