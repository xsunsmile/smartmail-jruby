# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_smartmail_session',
  :secret      => 'efb1ac3cd310b756f5d5d1e08a8e2728191c9781c99eb790c5083c6a027ad599c1bae006ba55d6bf831ca7e47d0911d059c6d0daf0757516bc86b16e6bffcb4f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
