# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
# use ArtistsController
# use SongsController
# use PreferencesController
# run ApplicationController
run Rails.application
