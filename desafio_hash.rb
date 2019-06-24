puts '1) Sintaxis básica'

h = { claveuno: 10, clavedos:20, clavetres:30}
puts h 

puts '2) Corrección de errores'

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche'=> 750}

productos.each { |producto, valor| puts producto }

puts '2.2. Se quiere agregar un nuevo producto al hash:'

#producto[2200] = cereal
productos['cereal'] = 2200
puts productos

puts '2.3. Se quiere actualizar el precio de la bebida:'

#producto[:bebida] = 2000
productos['bebida'] = 2000
puts productos

puts '2.4. Convertir el hash en un array y guardarlo en una nueva variable.'

array_prod = productos.to_a

puts print array_prod 

puts '2.5. Eliminar el producto galletas del hash.'

productos.delete('galletas')
puts productos

puts '3) Operaciones básicas'

h = {"x": 1, "y":2}

puts 'Agregar el string z con el valor 3'

h['z'] = 3 
puts h 

puts 'Cambiar el valor de x por 5.'

h['x'] = 5
puts h 

puts 'Eliminar la clave y.'

h.delete('y')
puts h 

' Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".' 
h['z'] = 'yeeah'
puts h['z']


puts 'Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores'

puts '4) Array y Hashes'

#personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
# edades = [32, 28, 41, 19]

def promedio 
    
    p = {'Carolina':32, 'Alejandro':28, 'Maria Jesus':41, 'Valentin':19} 
    puts p 
    
    sum = 0 
    p.each {|nombre, valor| sum += valor/4.to_f }
    sum 
end 
puts promedio 

puts '5) Array y Hashes'

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

puts '5.1. Generar un hash que contenga los meses como llave y las ventas como valor:'

h = {'Enero': 2000, 'Febrero': 3000, 'Marzo': 1000, 'Abril': 5000, 'Mayo': 4000}
puts h 

puts '5.2. En base al hash generado:'
puts '5.2.1. Invertir las llaves y los valores del hash.' 

hash = {}
h.to_a.each {|mes, valor| hash[valor] = mes }
puts hash

puts '5.2.2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido).'
hash = {}
h.to_a.each {|mes, valor| hash[valor] = mes 
if valor >= 5000
    puts hash[valor] = mes 
    
end
}

puts '6) Operaciones típicas sobre un hash
Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de
este.'

restaurant_menu = { "Ramen": 3, "Dal Makhani": 4, "Coffee": 2 }
puts restaurant_menu

puts '1. Obtener el plato mas caro'

r = restaurant_menu 
r.count {|plato, valor| 
    if valor == 4 
        puts plato 
    end
}

puts '2. Obtener el plato mas barato'

r = restaurant_menu 
r.count {|plato, valor| 
    if valor == 2
        puts plato 
    end
}

puts '3. Sacar el promedio del valor de los platos'

sum = 0 
r.each {|plato, valor| sum += valor/4.to_f  

}
puts sum

puts '4. Crear un arreglo con solo los nombres de los platos'

r = restaurant_menu 
r.each {|plato, valor| puts plato} 

puts '5. Crear un arreglo con solo los valores de los platos.'

r = restaurant_menu 
r.each {|plato, valor| puts valor} 

puts '6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)'

r = restaurant_menu 
r.each do |plato, valor|
    puts "#{plato} #{valor.to_i * 1.19}"
end

puts '7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.'

r = restaurant_menu 
r.count {|plato, valor|
        if valor == 4
       puts "#{plato} #{valor - (valor * 0.2.to_f) }"
        
        end 
}   

puts '7) Ejercicio completo con un hash'
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6 }

condition = 0
while condition != 7
    puts 'ingresa una opcion'
    puts '1) agregar un item'
    puts '2) Eliminar un item'
    puts '3) actualizar'
    puts '4) stock total'
    puts '5) Item con mayor stock'
    puts '6) Buscar item'
    puts '7) salir'
    condition = gets.chomp.to_i

case condition
when 1
    puts 'Ingrese item y stock (ej: "Pendrives, 100")'
    new_item = gets.chomp.split(', ')
    inventario[new_item[0].to_sym] = new_item[1]
    puts "Ingresado"
    puts inventario
    
when 2
    puts 'Que item desea eliminar? (ej: "Notebooks")'
    inventario.each_key { |i| puts i }
    erase_item = gets.chomp.to_sym
    inventario.delete(erase_item)
    puts "Borrado."
    
when 3
    puts 'Que item desea actualizar? (ej: "Notebooks")'
    inventario.each_key { |i| puts i }
    update_old = gets.chomp.to_sym
    puts "Con que desea actualizar #{update_old} (ej: \"Pendrives, 100\")"
    update_new = gets.chomp.split(', ')
    inventario.delete(update_old)
    inventario[update_new[0].to_sym] = update_new[1]
    puts "Actualizado.\n"

  when 4
    total = inventario.inject(0) { |sum, (_, c)| sum + c }
    puts "El stock total es de #{total} productos."

  when 5
    mayor = ''
    costo = 0
    inventario.each do |i, c|
      if c > costo
        costo = c
        mayor = i
      end
    end
    puts "El item con mayor stock es: #{mayor}"

  when 6
    puts "Que producto quiere saber si esta en inventario?"
    item = gets.chomp
    if inventario.include?(item.to_sym)
      puts "Si!"
    else
      puts "No :("
    end
    
  end
end