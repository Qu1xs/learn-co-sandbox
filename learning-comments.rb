bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}
 
bands.reduce({}) do |memo, (key, value)|
  p memo # First block parameter
  p key # Second block parameter
  p value # Second block parameter
  memo # Return value for the block, becomes the memo in the next go-round
end

array = [7, 3, 1, 2, 9, 6, 5, 4, 8]
 
array.sort do |a, b|
  a <=> b
end


class Song
  attr_accessor :artist
 
  # other methods
 
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end
class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  # other methods
 
end