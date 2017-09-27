ActiveAdmin.register Page do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :story_id, :content, :photo, :position

  form do |f|
    f.inputs "Infos de base" do
      f.input :story
      f.input :content
      f.input :position
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
