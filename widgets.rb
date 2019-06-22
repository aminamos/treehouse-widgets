require 'pry'

def ask(question)
    print question + " "
    gets.chomp
end


puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
p "You entered #{answer} widgets"

