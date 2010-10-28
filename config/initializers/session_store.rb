# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tapelib_session',
  :secret      => '924ce2e7d9820f5c87decdacb3d3dc52b5496a3f298170e859652138ba7332257819cbc45709548db40e45d0eb799377be3d330ba223c3c2d4f272e702ebdf7d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
