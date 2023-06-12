class Clave
    attr_accessor :clave, :cifrado

    def initialize(clave)
        @clave = clave.downcase
        self.cifrado = []
    end

    def mostrar_cifrado
        self.convetir_clave_a_numero
        return self.cifrado
        # puts "#{self.cifrado}"
    end

    def igualar_longitud_mensaje(mensaje_numero)
        diferencia_de_caracteres = (mensaje_numero.length - self.cifrado.length)
        if(diferencia_de_caracteres >= 0)
            (0..diferencia_de_caracteres).each do |i| 
                self.cifrado.push(self.cifrado[i])
            end
        end
        return nil
    end

    private
    def convetir_clave_a_numero
        abecedario = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

        chars = @clave.chars
        chars.each do |c|
            indice = abecedario.index c
            self.cifrado.push(indice)
        end
        return nil
    end
end