package cartelerasD

class Cine {

    String nombre
    ArrayList<String> salas
    static hasMany = [carteleras : Cartelera]

    //Direccion, empleados ,representante, etc...

    static constraints = {
    }
}
