ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :category, :author, :title, :body, :category_id, :author_id, :tags

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :author, :as => :select, :collection => Author.all.map {|a|["#{a.name}", a.id]}
      f.input :category, :as => :select, :collection => Category.all.map {|c|["#{c.name}", c.id]}
      f.input :tags
      f.input :title
      f.input :body, as: :froala_editor
    end         # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons
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
