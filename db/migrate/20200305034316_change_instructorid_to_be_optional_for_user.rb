class ChangeInstructoridToBeOptionalForUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :instructor_id, :integer, null: true
  end
end
