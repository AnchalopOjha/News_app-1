ActiveAdmin.register Coupon do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :discount, :first_date, :last_date, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :discount, :first_date, :last_date, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :name
    column :discount
    column :last_date
    column :first_date
    column :admin_user_id
    column :created_at
    column :updated_at
    column 'Admin User' do |coupon|
      coupon.admin_user.email if coupon.admin_user
    end
 
    actions
  end
  filter :name
  filter :discount
  filter :last_date
  filter :first_date
  filter :admin_user_id


  form do |f|
    f.inputs do
      f.input :name
      f.input :discount
      f.input :last_date
      f.input :first_date
      f.input :admin_user_id
    end
    f.actions
  end

end
