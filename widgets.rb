require 'pry'

# receive user input for desired number of widgets
# assume that negative numbers are accidental, switch to positive integer
def ask(question)
    print question + " "
    response = gets.chomp.to_i
    if response < 0
        response = response * -1
    end
    response
end

# discount conditional
def price(quantity)
    if quantity >= 50 && quantity < 100
        price_per_widget = 9
    elsif quantity >= 100
        price_per_widget = 8
    else
        price_per_widget = 10
    end
    quantity * price_per_widget
end

# apply good customer service
puts "Welcome to the widget store!"

# request a purchase
answer = ask("Disclaimer: negative numbers will be transformed into positive numbers.\nHow many widgets are you ordering?")
price_per_widget = 0
total = price(answer)

# verify number of widgets requested and display total
p "You entered #{answer} widgets, making your total $#{total}."




