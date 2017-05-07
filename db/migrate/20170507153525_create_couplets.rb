class CreateCouplets < ActiveRecord::Migration[5.0]
  def change
    create_table :couplets do |t|
      t.text :couplet
      t.references :poet, foreign_key: true

      t.timestamps
    end
  end
end
