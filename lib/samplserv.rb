require "samplserv/version"
require "sinatra/base"
require "pry"

module Samplserv
  class App < Sinatra::Base
    set :logging, true

    get "/" do
      "Welcome to Samplserv!"
    end

    post "/better" do
      version = params["v"] ? params["v"].to_i : 1
      # binding.pry
      spawn("afplay \"samples/Better#{version}.mp3\"")
    end

    post "/after" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/After#{version}.mp3\"")
    end

    post "/faster" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Faster#{version}.mp3\"")
    end

    post "/doit" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/DoIt#{version}.mp3\"")
    end

    post "/harder" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Harder#{version}.mp3\"")
    end

    post "/hour" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Hour#{version}.mp3\"")
    end

    post "/makeit" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/MakeIt#{version}.mp3\"")
    end

    post "/morethan" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/MoreThan#{version}.mp3\"")
    end

    post "/never" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Never#{version}.mp3\"")
    end

    post "/our" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Our#{version}.mp3\"")
    end

    post "/over" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Over#{version}.mp3\"")
    end

    post "/stronger" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Stronger#{version}.mp3\"")
    end

    post "/workis" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/WorkIs#{version}.mp3\"")
    end

    post "/after" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/After#{version}.mp3\"")
    end

    get "/stop" do
      spawn("killall afplay")
      "So much for the music..."
    end

    post "/beat" do
      spawn("afplay \"samples/beat.mp3\"")
    end

    run! if app_file == $0
  end
end
