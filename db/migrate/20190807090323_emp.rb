class Emp < ActiveRecord::Migration[5.2]
  def change
    create_table :emps do |e|
      e.string :username
      e.string :emial
      e.timestamps
    end
  end
end

