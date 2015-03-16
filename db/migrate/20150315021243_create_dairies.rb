class CreateDairies < ActiveRecord::Migration
  def change
    create_table :dairies do |t|
      t.string :title
      t.string :first
      t.string :second
      t.string :third
      t.string :fourth

      t.timestamps null: false
    end
  end
end
