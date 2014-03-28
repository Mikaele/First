class CreateDevLangs < ActiveRecord::Migration
  def change
    create_table :dev_langs do |t|
      t.string :nome
      t.text :obs

      t.timestamps
    end
  end
end
