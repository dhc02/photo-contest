# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photo_contest_2_session',
  :secret      => 'd36cfbf03d585b827e19f7546fdd508c09ed5eccd6ca400e65e3b43364ef3032dbe79d4a13edb2785625f4a197047837c915a4f577efc58b73d73553bada6e8f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
