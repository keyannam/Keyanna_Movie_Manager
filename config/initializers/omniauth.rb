Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '418083001709167', '429b5d2f6bad5c589b7f16c04b0f5c02'
  provider :github, '6cc0c7b10518c4aba37e', '43f795f41385dc0118a20d5e952644b1ce0eedb0'
end
