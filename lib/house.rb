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

class RandomHouse < House
    def phrase
        super.shuffle(random: Random.new(rand))
    end
end

class RandomVerseHouse < House
    def initialize(prelude= "This is")
        @verbs = ['that belonged to','that kept','that woke','that married','that kissed','that milked','that tossed','that worried','that killed','that ate','that lay in']
        @subjects =['the horse and the hound and the horn','the farmer sowing his corn','the rooster that crowed in the morn','the priest all shaven and shorn','the man all tattered and torn','the maiden all forlorn','the cow with the crumpled horn','the dog','the cat','the rat','the malt']
    end
    
    def line(number)
        if (number == 1)
            "#{@prelude} the house that Jack built.\n"
        else
            "#{@prelude} #{@subjects.last(number).join(' ')} #{@verbs.last(number).join(' ')} the house that Jack built.\n"
        end
    end
end