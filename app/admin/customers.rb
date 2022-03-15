ActiveAdmin.register Customer do

  permit_params :full_name, :phone_number, :email, :notes, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.actions         # adds the 'Submit' and 'Cancel' buttons
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, width:"200") : ""
    end
  end
end
