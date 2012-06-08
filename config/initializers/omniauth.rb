OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '5BgIIGUlvY3hmF7NUAKew', 'bP2b1BrI769I7uyUbw5U6VoirxLJte21oEuYQCK3dCQ'
end
