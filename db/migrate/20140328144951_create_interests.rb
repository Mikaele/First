class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.references :uca, index: true
      t.references :lang, index: true

      t.timestamps
    end
  end
end
