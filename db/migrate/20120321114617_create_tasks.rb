class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.datetime :deadline
      t.text :todo
      t.boolean :done, :default => false

      t.timestamps
    end
  end
end
