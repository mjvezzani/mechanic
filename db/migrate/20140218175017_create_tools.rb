class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.text :purpose

      t.timestamps
    end
  end
end
