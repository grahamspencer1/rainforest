class AddColumn < ActiveRecord::Migration[5.2]
  def change
    change_table :reviews do |t|
      t.integer :product_id

    end
  end
end
