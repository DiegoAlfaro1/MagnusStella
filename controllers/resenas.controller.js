const Reviews = require("../models/resenas.model"); 

exports.get_resenas_completas = (request, response, next) => {
    const marca = request.params.marca
    const idReview = request.params.id // Obtiene el ID de la reseña de los parámetros de la solicitud
    // Llama al método fetchCompleto del modelo para obtener los datos de la reseña completa
    Reviews.fetchCompleto(idReview, (err, resenaCompleta) => {
        if (err) {
            return response.status(500).send('Error fetching complete review');
        }

        if (!resenaCompleta) {
            return response.status(404).send('Reseña no encontrada');
        }

        // Renderiza la vista de la reseña completa y pasa los datos de la reseña
        response.render("resenas_completas", { resenas: resenaCompleta, 
            titulo: "Reseña Completa",
            marca: marca,
            ruta: "/reviews/resenas/completas/:marca/:id" 
        });
    });
};


exports.get_resenas = (request, response, next) => {
    const marca = request.params.marca
    const idReview = request.params.id;
    Reviews.fetchAll(marca, (err, resenasList) => {
        if (err) {
            return response.status(500);
        }
        const resenas = resenasList.map(resena => ({
            id:resena.idreview,
            title: resena.titulo, 
            resena_descrip: resena.descripcion,
            estrellas: resena.puntaje,
            itemcode: resena.idProducto,

        }));
        
        response.render("resenas", { resenas: resenas, 
            titulo: "Reseñas", 
            marca:marca,
             id:idReview,
            ruta: "/reviews/resenas"      

            });
    });

};

exports.get_correos = (request, response, next) => {
    const marca = request.params.marca
    response.render("correos", {
        titulo: "Correos",
        marca:marca,
        ruta: "/reviews/correos"
    })
}
