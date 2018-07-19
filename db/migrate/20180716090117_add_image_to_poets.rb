class AddImageToPoets < ActiveRecord::Migration[5.0]
  def change
    add_column :poets, :image, :string
  end
end
