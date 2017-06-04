package sistemacarteleras

import cartelerasD.*

class CarteleraController {

    def index() {
        [Cine: Cine.findAll()]
    }

    def save() {

        Pelicula peli = new Pelicula()
        peli.nombre = params.('nombrePeli')
        peli.duracionHoras = params.('duracionH')
        peli.duracionMin = params.('duracionM')

        peli.save(flush:true, failOnError:true)


        CarteleraD cd = new CarteleraD()
        cd.sala = params.('sala')
        cd.pelicula = peli
        cd.horaInicio = params.('hora')
        cd.minInicio = params.('minutos')
        cd.dia = params.('dia')

        cd.save(flush:true, failOnError:true)


        Cartelera cartelera = new Cartelera()
        cartelera.fechaInicio = new Date() // params.('fechaInicio')
        cartelera.carteleraDetalle.add(cd)
        cartelera.fechaInicio = params.('fechaInicio')

        cartelera.save(flush:true, failOnError:true)

        String c = params.('cine')
        Cine cine = Cine.findByNombre(c)
        cine.salas = new ArrayList<>()

        cine.carteleras.add(cartelera)

        cine.save(flush:true, failOnError:true)



        redirect(controler: "cartelera", action: "index" )
    }

    def create() {
        [cines: Cine.findAll()]
    }

    def edit() { }

    def delete() { }



    //Detalle --------

    def loadSalas(String cine)
    {
        [salas : Cine.findByNombre(cine).salas]
    }

    def CheckCoincide(Cine cine, String sala, String dia , int horaInicio, int minInicio, int duracionH, int duracionM)
    {
        for(Cartelera c : cine.carteleras )
        {
            for(CarteleraD cd : c.carteleraDetalle)
                if( cd.sala.equals(sala) && cd.dia.equals(dia))
                    {
                        int difH = (cd.horaInicio + cd.pelicula.duracionHoras) % 24  - horaInicio
                        int difM = (cd.minInicio + cd.pelicula.duracionMin) % 60 - minInicio

                        if(difH  <= 0)
                        {
                            if(difM <= 15)
                                return true

                            return false;
                        }
                        return false
                }
        }
        return false


    }

    def SaveCine()
    {
        Cine c = new Cine()
        c.nombre = nombre
        c.save()
    }


    /* switch (dia)
 {
     case "Lunes":
         break;
     case "Martes":
         break;
     case "Miércoles":
         break;
     case "Jueves":
         break;
     case "Viernes":
         break;
     case "Sábado":
         break;
     case "Dommingo":
         break;


 }*/





}
