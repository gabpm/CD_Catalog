require("rspec")
require("cd_organizer")

describe("Catalog") do
  before() do
    Catalog.clear()
  end

describe('#save') do
  it('saves the artist and album title') do
    new_artist = Catalog.new("Kanye West", "College Dropout")
    expect(new_artist.save()).to(eq([new_artist]))
  end
end

describe('#artist') do
  it('returns the artist name') do
  new_artist = Catalog.new("Kanye West", "College Droput")
  new_artist.save()
  expect(new_artist.artist()).to(eq("Kanye West"))
  end
end

describe('#title') do
  it('returns the album title') do
    new_artist = Catalog.new("Kanye West", "College Dropout")
    new_artist.save()
    expect(new_artist.title()).to(eq("College Dropout"))
  end
end

describe('#id') do
  it('returns an artist id') do
    new_artist = Catalog.new("Kanye West", "College Dropout")
    new_artist.save()
    expect(new_artist.id()).to(eq(1))
  end
end

describe('#find') do
  it('returns an artist by his/her/their id') do
    musical_artist1 = Catalog.new("Kanye West", "College Dropout")
    musical_artist1.save()
    musical_artist2 = Catalog.new("Drake", "Nothing Was The Same")
    musical_artist2.save()
    musical_artist3 = Catalog.new("Nas", "Illmatic")
    musical_artist3.save()
    expect(Catalog.find(musical_artist1.id())).to(eq(musical_artist1))
  end
end
end
