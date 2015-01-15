class Catalog
  @@catalog_list = []

  define_method(:initialize) do |music_artist, album_title|
    @music_artist = music_artist
    @album_title = album_title
    @id = @@catalog_list.length().+(1)
  end

  define_singleton_method(:clear) do
    @@catalog_list = []
  end

  define_method(:save) do
    @@catalog_list.push(self)
  end

  define_method(:artist) do
    @music_artist
  end

  define_method(:title) do
    @album_title
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_artist = nil
    @@catalog_list.each() do |musician|
      if musician.id().eql?(id)
        found_artist = musician
      end
    end
    found_artist
  end
end
