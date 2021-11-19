class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :external_url
      t.string :title
      t.integer :visits_count

      t.timestamps
    end
  end
end
