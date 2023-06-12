class Mensaje
    attr_accessor :mensaje, :cifrado
    
    def initialize(mensaje)
        @mensaje = mensaje.downcase
        self.cifrado = []
    end

    def mostrar_cifrado
        self.convetir_mensaje_a_numero
        return self.cifrado
    end

    def cifrar_mensaje
        

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