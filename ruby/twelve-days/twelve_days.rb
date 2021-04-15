class TwelveDays
  attr_reader :lyrics
  def self.song
    intro_start = "On the "
    intro_end = " day of Christmas my true love gave to me: "
    part_1 = "and a Partridge in a Pear Tree. \n\n"
    part_2 = "two Turtle Doves, "
    part_3 = "three French Hens, "
    part_4 = "four Calling Birds, "
    part_5 = "five Gold Rings, "
    part_6 = "six Geese-a-Laying, "
    part_7 = "seven Swans-a-Swimming, "
    part_8 = "eight Maids-a-Milking, "
    part_9 = "nine Ladies Dancing, "
    part_10 = "ten Lords-a-Leaping, "
    part_11 = "eleven Pipers Piping, "
    part_12 = "twelve Drummers Drumming, "

    day_array = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
    song_array = [part_1, part_2, part_3, part_4, part_5, part_6, part_7, part_8, part_9, part_10, part_11, part_12]

    @lyrics = ""
    counter = 0
    song_placeholder = ""
    12.times do |sing|
      counter += 1
      if sing == 0
        @lyrics += intro_start + day_array[sing] + intro_end + part_1[4..-1]
      else
        counter.times do |repeat|
          song_placeholder.prepend(song_array[repeat])
        end
        @lyrics += intro_start + day_array[sing] + intro_end + song_placeholder
        song_placeholder = ""
      end
    end
    return @lyrics
  end
end
