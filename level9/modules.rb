module AcceptsComments
  
  def comments
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end

end

class Clip

  include AcceptsComments

  def play
    puts "playing #{object_id}"
  end
end


class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments

  def show
    puts "Displaying #{object_id}"
  end
end

video = Video.new
video.add_comment("cool slow motion effect!")
video.add_comment("Weir ending.")
song = Song.new
song.add_comment("awesome beat")

p video.comments, song.comments
video.play

photo = Photo.new
photo.add_comment("beautiful color.")
photo.show
p photo.comments