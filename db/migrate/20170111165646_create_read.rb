class CreateRead < ActiveRecord::Migration[5.0]
  def change
    create_table :reads do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
