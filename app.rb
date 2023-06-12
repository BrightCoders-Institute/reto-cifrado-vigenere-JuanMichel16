require "./mensaje.rb"
require "./clave.rb"

class CifradoVinagere

  def iniciar_cifrado(mensaje, clave)
    mensaje = Mensaje.new(mensaje)
    clave = Clave.new(clave)
    puts "#{mensaje.mostrar_cifrado.join("")}"
    puts "#{clave.mostrar_cifrado.join("")}"
    clave.igualar_longitud_mensaje(mensaje.cifrado)

    mensaje_cifrado = mensaje.cifrar_mensaje(clave.cifrado).join("")
    puts "#{mensaje_cifrado}"

  end
end

nuevo_cifrado = CifradoVinagere.new.iniciar_cifrado("Hola", "Secreto")




