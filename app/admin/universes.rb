ActiveAdmin.register Universe do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :photo

  form do |f|
    f.inputs "Nouvel Univers" do
      f.input :name
      f.input :photo, as: :formtastic_attachinary ### THERE ####
    end
    actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
