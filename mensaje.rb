class Mensaje
    attr_accessor :mensaje, :cifrado, :mensaje_final
    
    def initialize(mensaje)
        @mensaje = mensaje.downcase
        self.cifrado = []
        self.mensaje_final = []
    end

    def mostrar_cifrado
        self.convetir_mensaje_a_numero
        return self.cifrado
    end

    def cifrar_mensaje(clave)
        abecedario = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        puts "Desde mensaje#{clave}"
        (0...self.cifrado.length).each do |i|
            letra_mensaje = self.cifrado[i]
            letra_clave = clave[i]
            suma = (letra_mensaje + letra_clave) % 26
            puts "desde cifrar mensaje: #{suma}"
            self.mensaje_final.push(abecedario[suma])
        end
        return self.mensaje_final
    end

    private
    def convetir_mensaje_a_numero
        abecedario = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
        chars = @mensaje.chars
        chars.each do |c|
            indice = abecedario.index c
            self.cifrado.push(indice)
        end
        return nil
    end
end