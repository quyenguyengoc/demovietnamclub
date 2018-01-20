class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :register_date, :date
    add_column :users, :invoice, :boolean
    add_column :users, :enterprise_name, :string
    add_column :users, :address, :string
    add_column :users, :full_name, :string
    add_column :users, :position, :string
    add_column :users, :department, :string
    add_column :users, :tel, :string
    add_column :users, :fax, :string
    add_column :users, :url, :string
    add_column :users, :other, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :school_name, :string
    add_column :users, :education, :string
  end
end
