require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/cd_organizer")

get("/") do
  cd_organizer = @@catalog_list
  erb(:index)
end

post("/cd_list") do
  artist = params.fetch("artist")
  album = params.fetch("album")
  search = params.fetch("search")
  cd_organizer = Catalog.new(artist, album)
  cd_organizer.save()
  erb(:success)
end

get("/clear") do


  erb(:index)
end
