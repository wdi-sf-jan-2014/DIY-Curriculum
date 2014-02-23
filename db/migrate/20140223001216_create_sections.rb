class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.references :course

      t.timestamps
    end
  end
end
