RailsAdmin.config do |config|

  # config.authorize_with do
  # redirect_to main_app.root_path unless warden.user.admin == true
  #end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

# add static link to admin navigation panel
#  config.navigation_static_links = {
#    'Dashboard' => '/admin' #or whatever you used to mount RailsAdmin in your routes file
#  }


#   whitelist what appears on admin panel
   config.included_models = ["ApplicationRecord", "Quote", "Employee", "Lead", "Address", "Customer", "Building", "Buildingdetail", "Battery", "Column", "User", "Elevator"] #"Profile", 

  config.model "Lead" do
    list do
      field :id
      field :full_name
      field :company_name
      field :email
      field :phone
      field :project_name
      field :project_description
      field :department
      field :message
      field :attachment_blob_id
      configure :attachment_blob_id do
        label "Attachment Blob ID"
        formatted_value{ bindings[:object].attachment_blob_id } 
      end
      field :date_of_request
      field :created_at
      field :updated_at
    end
  end

end
