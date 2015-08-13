class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :estimate
      t.string :due_date

      t.timestamps null: false
    end
  end
end
