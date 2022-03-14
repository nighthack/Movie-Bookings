class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :m_name
      t.string :language

      t.timestamps
    end
  end
end
