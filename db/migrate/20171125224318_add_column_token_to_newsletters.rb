class AddColumnTokenToNewsletters < ActiveRecord::Migration[5.1]
  def change
    add_column :newsletters, :token, :string
  end
end
