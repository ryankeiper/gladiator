class CreateGladiator < ActiveRecord::Migration
  def change
    create_table :gladiators do |t|
      t.belongs_to :arena
      t.string :name
      t.string :weapon
    end
  end
end
