class CreateToolboxes < ActiveRecord::Migration
  def change
    create_table :toolboxes do |t|
      t.references :tool, index: true
      t.belongs_to :mechanic, index: true

      t.timestamps
    end
  end
end
