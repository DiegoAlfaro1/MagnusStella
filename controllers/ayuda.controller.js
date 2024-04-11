const Model = require('../models/ayuda.model');

exports.get_ayuda = (request, response, next) => {
    const marca = request.params.marca;
    response.render("ayudas/ayuda", {
        titulo: 'Ayuda',
        marca: marca,
        ruta: "/ayuda"
    });
}



exports.get_ayuda_login = (request, response, next) => {
    const marca = request.params.marca;
    response.render("ayudas/ayuda-login", {
        titulo: 'Ayuda Login',
        marca: marca,
        ruta: "/ayuda/login"
    });
}

exports.get_ayuda_dashboard = (request, response, next) => {
    const marca = request.params.marca;
    response.render("ayudas/ayuda-dashboard", {
        titulo: 'Ayuda Dashboard',
        marca: marca,
        ruta: "/ayuda/dashboard"
    });
}

exports.get_ayuda_resenas = (request, response, next) => {
    const marca = request.params.marca;
    response.render("ayudas/ayuda-resenas", {
        titulo: 'Ayuda Reseñas',
        marca: marca,
        ruta: "/ayuda/resenas"
    });
}

exports.get_ayuda_correos = (request, response, next) => {
    const marca = request.params.marca;
    response.render("ayudas/ayuda-correos", {
        titulo: 'Ayuda Correos',
        marca: marca,
        ruta: "/ayuda/correos"
    });
}

exports.get_ayuda_usuarios = (request, response, next) => {
    const marca = request.params.marca;
    response.render("ayudas/ayuda-usuarios", {
        titulo: 'Ayuda Usuarios',
        marca: marca,
        ruta: "/ayuda/usuarios"
    });
}

exports.get_ayuda_general = (request, response, next) => {
    const marca = request.params.marca;
    response.render("ayudas/ayuda-general", {
        titulo: 'Ayuda General',
        marca: marca,
        ruta: "/ayuda/general"
    });
}