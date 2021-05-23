class House

    def phrase
        [
            'the horse and the hound and the horn that belonged to',
            'the farmer sowing his corn that kept',
            'the rooster that crowed in the morn that woke',
            'the priest all shaven and shorn that married',
            'the man all tattered and torn that kissed',
            'the maiden all forlorn that milked',

        ]
    end

    def phrase(number)
        if number == 2
            "the malt that lay in "
        elsif number == 3
            "the rat that ate the malt that lay in "
        elsif number == 4
            "the cat that killed the rat that ate the malt that lay in "
        elsif number == 5
            "the dog that worried the cat that killed the rat that ate the malt that lay in "
        elsif number == 6
            "the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
        elsif number == 7
            "the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
        elsif number == 8
            "the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
        elsif number == 9
            "the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
        elsif number == 10
            "the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
        elsif number == 11
            "the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
        elsif number == 12
            "the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in "
        else
            ""
        end
    end

    def line(number)
        "This is #{phrase(number)}the house that Jack built.\n"
    end

    def recite
        1.upto(12).collect {|i| line(i)}.join("\n")
    end
end