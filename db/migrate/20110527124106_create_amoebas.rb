class CreateAmoebas < ActiveRecord::Migration
  def self.up
    create_table :amoebas do |t|
      t.integer :dmgpoints
      t.references :player
      t.references :position

      t.timestamps
    end
  end

  def self.down
    drop_table :amoebas
  end
end
