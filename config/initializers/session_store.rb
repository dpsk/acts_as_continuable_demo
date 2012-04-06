# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_acts_as_continuable_demo_session',
  :secret      => '193b6c32aec1755816ef123fc69f99e8c3317dff32477222569046632fd0d4e493122de5b8a31442cdaa33dff91a146ff21ac4265adcd6aae3c9e5417f576caa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
