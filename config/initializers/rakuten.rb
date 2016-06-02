Rakuten::Api.configure do |options|
  options[:applicationId] = Rails.application.secrets.rakuten_application_id
  options[:affiliate_id] = Rails.application.secrets.rakuten_affiliate_id
end