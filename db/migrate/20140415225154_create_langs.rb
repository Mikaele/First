class CreateLangs < ActiveRecord::Migration
  def change
    create_table :langs do |t|
      t.string :nome
      t.string :obs
      t.string :requisitos

      t.timestamps
    end
  end
end
