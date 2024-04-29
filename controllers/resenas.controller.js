const Reviews = require("../models/resenas.model");
const Correos = require("../models/correos.model");
const nodemailer = require("nodemailer");
const ejs = require('ejs');

//Definimos las variables para nodemailer
const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 465,
  secure: true,
  auth: {
    user: "tracpablo@gmail.com",
    pass: "gjlu ultc ppfm srbq",
  },
});


exports.get_resenas_completas = (request, response, next) => {
  const marca = request.params.marca;
  const idReview = request.params.id; // Obtiene el ID de la reseña de los parámetros de la solicitud
  // Llama al método fetchCompleto del modelo para obtener los datos de la reseña completa
  Reviews.fetchCompleto(idReview, (err, resenaCompleta) => {
    if (err) {
      return response.status(500).send("Error fetching complete review");
    }

    if (!resenaCompleta) {
      return response.status(404).send("Reseña no encontrada");
    }

    // Renderiza la vista de la reseña completa y pasa los datos de la reseña
    response.render("resenas_completas", {
      resenas: resenaCompleta,
      titulo: "Reseña Completa",
      marca: marca || "LU1",
      ruta: "/reviews/resenas/completas/:marca/:id",
      permisos: request.session.permisos || [],
    });
  });
};

exports.get_resenas = (request, response, next) => {
  const marca = request.params.marca;
  const idReview = request.params.id;
  Reviews.fetchAll(marca, (err, resenasList) => {
    if (err) {
      return response.status(500);
    }
    const resenas = resenasList.map((resena) => ({
      id: resena.idreview,
      title: resena.titulo,
      resena_descrip: resena.descripcion,
      estrellas: resena.puntaje,
      itemcode: resena.idProducto,
    }));

    response.render("resenas", {
      resenas: resenas,
      titulo: "Reseñas",
      marca: marca || "LU1",
      id: idReview,
      ruta: "/reviews/resenas",
      permisos: request.session.permisos || [],
    });
  });
};

exports.get_buscar = (request, response, next) => {
  const marca = request.params.marca;
  const valor_busqueda = request.params.valor_busqueda;
  Reviews.search(valor_busqueda, marca, (err, resenas) => {
    if (err) {
      console.log(err);
      return response.status(500).json({ error: "Error al buscar reseñas" });
    }
    return response.status(200).json({ resenas: resenas });
  });
};

//---------------------------------------------------------------Enviar Correos -----------------------------

exports.enviar_resenia = async (request, response, next) => {
  const marca = request.params.marca;
  const csrfToken = request.csrfToken();
  console.log(csrfToken);

  try {

    //Recuperamos los valores para el template de resenias
    const total = await Correos.emailpreguntas(marca); // Espera a que se resuelva la promesa

    const { preguntas, idp } = await Correos.emailConfiguration(marca);
    const tipos = [];
    const opciones = [];
    const total_opciones = [];
    for (let i = 0; i < total; i++) {
      const tipo = await Correos.emailtipo_pre(idp[i].idPregunta);
      const opcion = await Correos.emailopciones(idp[i].idPregunta);
      const to_opcion = await Correos.emailcountopcion(idp[i].idPregunta);
      tipos.push(tipo);
      opciones.push(opcion);
      total_opciones.push(to_opcion);
    }

    console.log('Antes de ejs')
    //Renderizamos el template del ejs
    ejs.renderFile('views/prueba_correo.ejs',{
      preguntas: preguntas,
      titulo: "Correos",
      marca: marca || "LU1",
      ruta: "/reviews/resenas/enviar_resenia/LU1",
      csrfToken: request.csrfToken(),
      idp: idp,
      total: total,
      tipos: tipos,
      opciones: opciones,
      idp: idp,
      total_opciones: total_opciones,
      permisos: request.session.permisos || [],
      attachments: [
        {
          filename: "image.png",
          path: `./public/images/${marca}.png`,
          cid: "unique@nodemailer.com", //same cid value as in the html img src
        },
      ],

    }, function(err, template){
      if (err) {
        console.log('Error: ', err)

      } else {

        console.log('Dentro de ejs')

        //Usamos main para enviar los correos
        async function main() {

          // send mail with defined transport object
          const info = await transporter.sendMail({

            from: '"Forgot password" <tracpablo@gmail.com>', // sender address
            to: "a01710778@tec.mx", // list of receivers
            subject: "Intento1", // Subject line
            html: template,
            attachments: [
              {
                filename: "image.png",
                path: `./public/images/${marca}.png`,
                cid: "unique@nodemailer.com", //same cid value as in the html img src
              },
            ],

          });


          console.log("Message sent: %s", info.messageId);
          // Message sent: <d786aa62-4e0a-070a-47ed-0b0666549519@ethereal.email>
        }

        //Mandamos a crear el correo y si falla nos manda el error
        main().catch(console.error);
      }
    })

    // Ahora renderiza con los datos obtenidos
    response.render("prueba_correo", {
      preguntas: preguntas,
      titulo: "Correos",
      marca: marca || "LU1",
      ruta: "/reviews/resenas/enviar_resenia/LU1",
      csrfToken: request.csrfToken(),
      idp: idp,
      total: total,
      tipos: tipos,
      opciones: opciones,
      idp: idp,
      total_opciones: total_opciones,
      permisos: request.session.permisos || [],
    });
  } catch (error) {
    console.error("Error al cargar las preguntas:", error);
    response.status(500).send("Error interno del servidor");
  }
};
