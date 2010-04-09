# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_session',
  :secret      => 'ac4d94e5db29786fda3c44661668b053d965a60dc17045705004eee80b7fb6830fa0dcb8be65bb07fbc9d7e7b3f41108c5d12ce3076b822d20994ba1a87b426f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
