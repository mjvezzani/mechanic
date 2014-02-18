class CreateMechanics < ActiveRecord::Migration
  def change
    create_table :mechanics do |t|
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end
