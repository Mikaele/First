class CreateUcas < ActiveRecord::Migration
  def change
    create_table :ucas do |t|
      t.integer :matricula
      t.string :curso
      t.integer :periodo
      t.string :email

      t.timestamps
    end
  end
end
