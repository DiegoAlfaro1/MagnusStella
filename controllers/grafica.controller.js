const Model = require('../models/grafica.model'); // Reemplaza './model' con la ruta correcta a tu modelo

exports.get_dashboard = (request, response, next) => {
    const marca = request.params.marca
    let categoria = request.params.categoria || '*';
    let producto = '*';//"AN1133V"
    // let producto = request.params.producto || '*'; 
    
    Promise.all([Model.StarAvgLine(marca,categoria), Model.tasaDeRespuesta(marca,categoria,producto),Model.ReviewsSentxMonth(marca,categoria,producto),Model.StarAvgNumber(marca,categoria,producto)])
        .then(([averageScores, responseRates,reviewsSent,starAVGNum]) => {
            const roundedStarAVGNum = Math.round(starAVGNum * 100) / 100
            const roundedStarAVGNumComplementario = Math.round(100 - ((roundedStarAVGNum / 5) * 100));
            response.render("dashboard", {
                titulo: 'Dashboard',
                promedioPuntajes: averageScores,
                tasaDeRespuesta: responseRates,
                encuestasEnviadas: reviewsSent,
                numAVGEstrella: roundedStarAVGNum,
                porcentaje: roundedStarAVGNumComplementario,
                marca: marca,
                ruta: "/graphics/dashboard"
            });
        })
        .catch(error => {
            console.error('Error obteniendo datos para el dashboard:', error);
            next(error); // Pasa el error al siguiente middleware para manejarlo
        });
};

exports.get_buscar = (request,response,next) => {
    Model.search(request.params.valor_busqueda)
        .then(([busqueda,fieldData]) => {
            return response.status(200).json({busqueda: busqueda});
        })
        .catch((error) => {console.log(error)});
};

exports.get_analitica = (request, response, next) => {
    const marca = request.params.marca;
    response.render("analitica", {
        titulo: 'Analitica',
        marca:marca || "LU1",
        ruta: "/graphics/analitica"
        // csrfToken: request.csrfToken()
    })
}