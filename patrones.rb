
#METODOS
	def metodo_o(n)
		puts "* " * n
		(n-2).times do
			letra_o = "* " + ("\s\s" * (n-2)) + "*"
			puts letra_o
		end
		puts "* " * n
	end

	def metodo_i(n)
		puts "* " * n
		(n-2).times do
			letra_i = ("\s" * (n-2)) + " *"
			puts letra_i
		end
		puts "* " * n
	end

	def metodo_z(n)
		puts "* " * n
		if n <= 12
			cont = n+(n/2)
			(n-2).times do
				puts ("\s" * cont) + "*"
				cont -= 2
			end
		elsif n >= 13
			cont = n
			(n-2).times do
				cont -= 1
				puts ("\s\s" * cont) + "*" + ("\s" * (n+cont))
			end
		end
		puts "* " * n
	end

def metodo_x(n)
	if n.even?
		((n/2)-1).times do |i|
				puts ("\s\s" * i) + "*"+ ("\s\s" * ((n-2)-(i+i))) + "*"
				i += 1
		end
		1.times do |i|
			i += ((n/2)+1)
			puts ("\s\s" * (n-i)) + " *"
		end
		(n/2).times do |i|
			i += 1
			puts ("\s" * ((n-2)-i)) + "* " + ("\s\s" * i) + "*"
		end
	else
		(n/2).times do |i|
				puts ("\s\s" * i) + "*"+ ("\s\s" * ((n-2)-(i+i))) + "*"
				i += 1
		end
		1.times do |i|
			i += ((n/2)+1)
			puts ("\s\s" * (n-i)) + "*"
		end
		(n/2).times do |i|
			i += 1
			puts ("\s" * ((n-2)-i)) + "* " + ("\s\s" * i) + "*"
		end
	end
end

	def numero_0(n)
		puts "*" * n
		(n-2).times do |i|
			i += 3
			puts "*" + ("\s" * (i-3)) + "*" + ("\s" * (n-i)) + "*"
		end
		puts "*" * n		
	end

	def metodo_navidad(n)
		i = 0
		mitad = n/2 + 2
		while i < (n-1) do 
			i += 1
			puts ("\s") * (n-i) + ("* "* i)
		end
		for i in (mitad..n) 
			puts ("\s\s" * (n/2)) + "*"
		end
		puts "\s" + " *" * (n-2)
	end

puts "Elige el tamaño de lineas"
n = gets.to_i

puts metodo_o(n)
puts metodo_i(n)
puts numero_0(n)
puts metodo_navidad(n)
puts metodo_x(n)
puts metodo_z(n)