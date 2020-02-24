class CreateZeppelins < ActiveRecord::Migration[6.0]
  def change
    create_table :zeppelins do |t|

      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :location
      t.integer :price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
