class AddCoordinatesToZeppelins < ActiveRecord::Migration[6.0]
  def change
    add_column :zeppelins, :latitude, :float
    add_column :zeppelins, :longitude, :float
  end
end
