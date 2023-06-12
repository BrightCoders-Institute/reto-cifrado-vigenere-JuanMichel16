class Clave
    attr_accessor :clave, :cifrado

    def initialize(clave)
        @clave = clave.downcase
        self.cifrado = []
    end

    def mostrar_clave_cifrada
        clave = self.cifrar_clave
        puts clave
    end

    private
    def cifrar_clave
        abecedario = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

        chars = @clave.chars
        chars.each do |c|
            indice = abecedario.index c
            self.cifrado.push(abecedario.index c)
        end
    end
end