class AddColumnUserToMembers < ActiveRecord::Migration[5.1]
  def change
    add_reference :members, :user, foreign_key: true
  end
end
