class AddImgPathToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :img_path, :string
  end
end
