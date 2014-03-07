class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :source_url
      t.text :text
      t.references :section

      t.timestamps
    end
  end
end
