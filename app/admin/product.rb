ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :name
    column :price
    column :available
    column :descr
    column :photo_file_name
    column :img1_file_name
    column :img2_file_name
    actions
  end


  controller do
    def permitted_params
      params.permit product: [:name, :price, :available, :photo, :img1, :img2, :date, :url]
    end
  end

  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :photo, :as => :file, :label => 'Foto1', :hint => image_tag(f.object.photo.url(:thumb))
      f.input :img1, :as => :file, :label => 'Foto2', :hint => image_tag(f.object.img1.url(:thumb))
      f.input :img2, :as => :file, :label => 'Foto3', :hint => image_tag(f.object.img2.url(:thumb))

      # Will preview the image when the object is edited
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :photo do
        image_tag(ad.photo.url(:thumb))
      end
      row :img1 do
        image_tag(ad.img1.url(:thumb))
      end
      row :img2 do
        image_tag(ad.img2.url(:thumb))
      end
      # Will display the image on show object page
    end
  end


end
