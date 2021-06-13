class Song

    def initialize(title, artist, lyrics)
        @song_title = title
        @song_artist = artist
        @song_lyrics = lyrics
    end

    def title=(str)
        @song_title = str
    end

    def artist=(str)
        @song_artist = str
    end
    
    def lyrics=(str)
        @song_lyrics = str
    end

    def title
        return @song_title
    end

    def artist
        return @song_artist
    end
    
    def lyrics
        return @song_lyrics
    end

    def info
        return "Artist: #{artist}\nTitle: #{title}\nLyrics: #{lyrics}"
    end

end

class Product

    def initialize(name,description,price)
        @name, @description, @price = name, description, price
    end

    def name
        @name
    end

    def description
        @description
    end

    def price
        @price
    end

    def name=(text)
        @name = text
    end

    def description=(text)
        @description = text
    end

    def price=(number)
        @price = number
    end

    def tax
        price*0.09
    end

    def total
        price + tax
    end

end


newsong = Song.new("Friday", "Rebecca Black", "Gotta get down on Friday")
puts newsong.info


product = Product.new("Printer", "It prints pages!", 94)
p product
p product.name
product.name = "Awesome Printer"
p product.name
p product.tax
p product.total