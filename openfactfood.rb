require 'open-uri'
require 'json'
loop do
puts "Entrez un numero de Code Barre"
bar_code = gets.chomp
url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"
json = open(url).read
data= JSON.parse(json)
puts data['product']['product_name']
end