RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

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

  # Number of default rows per-page:
  config.default_items_per_page = 50

  # Exclude specific models (keep the others):
  # config.excluded_models = ['Admin', 'Payment', 'User', 'Version']
  config.excluded_models = [
    InternTag,
  ]

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]
  config.label_methods.insert(0, :rails_admin_name)


  config.model 'InternTag' do
    visible false
  end
end
