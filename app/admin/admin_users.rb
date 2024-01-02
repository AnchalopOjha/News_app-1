ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  
end
