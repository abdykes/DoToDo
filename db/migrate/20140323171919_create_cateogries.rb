class CreateCateogries < ActiveRecord::Migration
  def change
    create_table :cateogries do |t|
      t.string :label

      t.timestamps
    end
  end
end
