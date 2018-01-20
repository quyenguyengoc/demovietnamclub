ActiveAdmin.register Member do
  permit_params :email, :register_date, :invoice, :enterprise_name, :address, :full_name, :position, :department, :tel, :fax, :url, :other, :gender

  form do |f|
    f.inputs "Article Details" do
      f.input :email
      f.input :register_date
      f.input :invoice
      f.input :enterprise_name
      f.input :address
      f.input :full_name
      f.input :position
      f.input :department
      f.input :tel
      f.input :fax
      f.input :url
      f.input :other
      f.input :gender
    end
    f.actions
  end

  index do
    id_column
    column :email
    column :address
    actions
  end
end
