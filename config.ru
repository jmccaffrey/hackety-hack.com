require './hackety'

mime_type :ttf, "font/ttf"
mime_type :woff, "application/x-woff"
mime_type :shy, "application/x-shy"
mime_type :eot, "application/octet-stream"


#how many seconds the browser can cache the static assets
Sinatra::Application.settings.set(:static_cache_control, [:public, :max_age => 115200])
run Sinatra::Application
