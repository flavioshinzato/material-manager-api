RailsAdmin.config do |config|

  config.main_app_name = ['Sports Material', 'Admin']

  config.authorize_with do
    authenticate_or_request_with_http_basic('SportsMaterial') do |username, password|
      username == 'admin' &&
      password == '4@sset123'
    end
  end

  config.excluded_models = [ Admin ]

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
  end
end
