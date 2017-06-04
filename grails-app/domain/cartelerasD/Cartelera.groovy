package cartelerasD

class Cartelera {

    String id;
    Date fechaInicio;

    ArrayList<CarteleraD> carteleraDetalle

    Cartelera() {

        this.fechaInicio = fechaInicio;
        this.id = "xxx" + Calendar.getInstance().getTime().toString().replace("/","").replace(" ","");
        carteleraDetalle = new ArrayList<>()
    }


    static constraints = {
    }
}
