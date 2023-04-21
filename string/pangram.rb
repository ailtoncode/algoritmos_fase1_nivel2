class Pangram
    
    #Tabela ASCII
    #https://www.ime.usp.br/~pf/algoritmos/apend/ascii.html

    def missing(text)
        dec_ascii_characters = []
        (text.length).times do |value|
            dec_ascii_characters << text[value].downcase.ord
        end

        missing_characters = []
        #97..122 - Valor decimal de a-z na tabela ASCII
        for i in 97..122 do
            missing_characters << i.chr if !dec_ascii_characters.include?(i)
        end
        missing_characters
    end
end

pangram = Pangram.new
text = 'The quick brown fox jumps over the dog'
missing = pangram.missing(text)
p missing