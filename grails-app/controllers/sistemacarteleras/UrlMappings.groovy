package sistemacarteleras

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"( controller: "cartelera", action:"index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
