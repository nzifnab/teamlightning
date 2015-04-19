Forem.user_class = "User"\
# TODO:  Update with proper email address.
Forem.email_from_address = "noreply@teamlightning.com"
# If you do not want to use gravatar for avatars then specify the method to use here:
# Forem.avatar_user_method = :custom_avatar_url
Forem.per_page = 20
Forem.autocomplete_field = :display_name


Rails.application.config.to_prepare do
#   If you want to change the layout that Forem uses, uncomment and customize the next line:
  Forem::ApplicationController.layout "application"
  Forem::Admin::BaseController.layout "application"
  #Forem.sign_in_path = :new_user_session
#
#   If you want to add your own cancan Abilities to Forem, uncomment and customize the next line:
#   Forem::Ability.register_ability(Ability)
end
#
# By default, these lines will use the layout located at app/views/layouts/forem.html.erb in your application.
