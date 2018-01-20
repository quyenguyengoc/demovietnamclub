class AddFields2ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :vocal, :string
    add_column :users, :school_year, :string
  end
end
