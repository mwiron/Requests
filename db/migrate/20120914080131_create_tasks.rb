class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_nr
      t.string :task_beschreibung

      t.timestamps
    end
    Task.create   :task_nr => "T1001",
                  :task_beschreibung => "MRSA"
    Task.create   :task_nr => "T1002",
                  :task_beschreibung => "RSA"          
  end
end
