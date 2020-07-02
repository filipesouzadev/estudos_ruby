movies = {
  pantera_negra: 4
}

puts "O que você gostaria de fazer?"

choice = gets.chomp

case choice
when 'add'
  puts "Qual seu Filme Favorito?"
  title = gets.chomp
if movies[title.to_sym].nil?
  puts "Qual é a classificação do Filme? (coloque um número de 0 a 4)"
  rating = gets.chomp
  puts "#{title} foi adicionado corretamente com a classificação #{rating}."
  movies[title.to_s] = rating
  movies[title.to_sym] = rating.to_i
else
  puts "Este filme já existe!"
end
when 'update'
  puts "Qual filme você quer atualizar?"
  title = gets.chomp
if movies[title.to_sym].nil?
  puts "Filme não encontrado!"
else
  puts "Qual é a nova classificação? (coloque um número de 0 a 4)"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
  puts "#{title} foi atualizado com sucesso. Nova classificação #{rating}"
end
when 'display'
  puts "Movies!"
when 'delete'
  puts "Deleted"
else
  puts "Error!"
end