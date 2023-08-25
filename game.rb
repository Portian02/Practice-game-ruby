def game
     puts "Bienvenido al juego, por favor ingresa tu nombre:"
     name = gets.chomp
     puts "Hola #{name}, ¡preparate para jugar!"
   
    # TODO: Aquí va el resto de tu código
     number_ram = rand(1...100)
     puts number_ram
     counter = 10

   loop do
        puts "ingresa un número para adivinar"
        player = gets.chomp.to_i
        counter -= 1
      if player == 0 
        counter +=1
        puts "error ingresa un numero"
        puts "te quedan: #{counter} intentos"

      else
         if number_ram > player
           puts "Oh. your are low"
           puts "te quedan: #{counter} intentos"
  
           elsif number_ram < player
            puts "Oh. you are hight"
            puts "te quedan: #{counter} intentos"

           else 
             puts"Good Job, #{name}! ¡You got it in #{10 - counter}" 
             break
        
           end
       end
       if counter == 0
        puts "Lo siento. No acertaste mi número. Mi número era #{number_ram}"
        break
       end
    end
end
game