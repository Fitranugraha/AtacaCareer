# Staging configuration is identical to production, with some overrides
# for hostname, etc.

require_relative "./production"

Rails.application.configure do
  config.action_mailer.default_url_options = {
    :host => "staging.ataca.id",
    :protocol => "https"
  }
  config.action_mailer.asset_host = "https://staging.ataca.id"
end
