class Mensaje
    attr_accessor :mensaje, :cifrado
    
    def initialize(mensaje)
        @mensaje = mensaje.downcase
        self.cifrado = []
    end

    def mostrar_mensaje_cifrado
        mensaje = self.cifrar_mensaje
    end

    private
    def cifrar_mensaje
        abecedario = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
        chars = @mensaje.chars
        chars.each do |c|
            self.cifrado.push(abecedario.index c)
        end

        self.cifrado
    end

end