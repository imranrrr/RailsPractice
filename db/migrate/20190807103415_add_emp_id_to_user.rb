class AddEmpIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :emp_id, :integer
  end
end
