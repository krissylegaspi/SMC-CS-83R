class CreateTvshows < ActiveRecord::Migration[5.2]
  def change
    create_table :tvshows do |t|
      t.string :name
      t.integer :seasons
      t.string :network
      t.string :lead
      t.integer :stars

      t.timestamps
    end
  end
end
