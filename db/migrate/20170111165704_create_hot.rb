class CreateHot < ActiveRecord::Migration[5.0]
  def change
    create_table :hots do |t|
      t.string :url
      t.string :hits

      t.timestamps
    end
  end
end
