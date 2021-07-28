ActiveAdmin.register Project do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :content, :price,:image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :content, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :name
      row :content
      row :price
      row :image do |ad|
        project.image.present? ? image_tag(project.image,height:'200',width:'200') :content_tag(:span,'No Photoyet')
      end
    end
  end

  form do |f|
  f.semantic_errors # shows errors on :base
  f.inputs          # builds an input field for every attribute
  f.inputs do
    f.input :image,as: :file # hint: works fine
  end
  f.actions         # adds the 'Submit' and 'Cancel' buttons
end

end
