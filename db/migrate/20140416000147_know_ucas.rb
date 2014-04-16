class KnowUcas < ActiveRecord::Migration
  def change
    create_table :know, :id=>false  do |t|
      t.references :uca, index: true
      t.integer :lang_know_id, index: true
    end
    add_index :know, [:uca_id,:lang_know_id],:unique => true

  end
end
