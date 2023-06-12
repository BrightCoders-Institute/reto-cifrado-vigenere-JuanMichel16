require "./mensaje.rb"
require "./clave.rb"

class CifradoVinagere

  def iniciar_cifrado(mensaje, clave)
    mensaje = Mensaje.new(mensaje)
    clave = Clave.new(clave)

    puts clave.mostrar_clave_cifrada
    puts mensaje.mostrar_mensaje_cifrado
  end

end

nuevo_cifrado = CifradoVinagere.new.iniciar_cifrado("coco", "asd")



