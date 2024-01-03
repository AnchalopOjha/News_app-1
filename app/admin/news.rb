ActiveAdmin.register News do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :tittle, :description, :category_id, :city_id,:image
   index do
    selectable_column
    id_column
    column :tittle
    column :description
    column :city_id
    column :category_id
    column :created_at
    column :updated_at
    column :image do |news|
      if news.image.attached?
        image_tag(news.image, height: '50px')
      else
        content_tag(:span, "No Image Attached")
      end
    end
    actions
  end 
  form do |f|
    
    f.inputs "News Details" do
      f.input :tittle
      f.input :description, as: :text
      f.input :city_id
      f.input :category_id
      # Add the file field for image attachment

      f.input :image, as: :file
    end
    f.actions
  end
 
  
end
