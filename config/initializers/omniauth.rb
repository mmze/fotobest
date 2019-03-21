Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, Rails.application.credentials.id_key, Rails.application.credentials.def_vk_key, scope: 'email'
end
