variable = "false"
otra_variable = "nil"

case
when variable == "Algún texto" then
  puts "No es igual a Algún texto"

when otra_variable.nil?
  puts "otra_variable es nil!"

when variable == false
  puts "Al parecer esto es lo que se debe ejecutar!"

else
  puts "Nada se ejecutó? Por que?"
end

