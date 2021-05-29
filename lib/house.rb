class House

    def initialize(prelude= "This is")
        @prelude = prelude
    end

    def line(number)
        "#{@prelude} #{linePiece(number)}the house that Jack built.\n"
    end

    def linePiece(number)
        phrase.last(number).join(' ')
    end

    def recite
        (1..phrase.length).map {|i| line(i)}.join("\n")
    end

    def phrase
        [
            'the horse and the hound and the horn that belonged to',
            'the farmer sowing his corn that kept',
            'the rooster that crowed in the morn that woke',
            'the priest all shaven and shorn that married',
            'the man all tattered and torn that kissed',
            'the maiden all forlorn that milked',
            'the cow with the crumpled horn that tossed',
            'the dog that worried',
            'the cat that killed',
            'the rat that ate',
            'the malt that lay in',
            "",
        ]
    end
end

