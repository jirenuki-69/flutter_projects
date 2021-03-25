import 'package:flutter/foundation.dart';

class Proveedor {
  Proveedor({
    @required this.id,
    @required this.nombre,
    @required this.descripcion,
    @required this.imagenes,
    @required this.categoria,

});
  String id;
  String nombre;
  String descripcion;
  List<String> imagenes;
  List<String> categoria;
}

final List<Proveedor> portafolio = <Proveedor>[
  Proveedor(
    id: '1',
    nombre: 'Una florería cualquiera',
    categoria: [
      'Florería',
      'Luz y Sonido',
      'Banqueteras',
      'Florería',
      'Luz y Sonido',
      'Banqueteras',
    ],
    descripcion: 'Eu consequat do laboris cupidatat non duis reprehenderit non sunt excepteur excepteur. Commodo elit culpa laborum adipisicing commodo ipsum consectetur consequat sint proident cillum. Reprehenderit sunt qui tempor nostrud dolore fugiat deserunt irure enim ea. Consequat exercitation velit consectetur ipsum pariatur pariatur excepteur minim voluptate id minim id Lorem. Excepteur qui exercitation minim nulla amet. Duis id qui labore officia non occaecat non consectetur amet officia adipisicing. Enim aliquip eiusmod est minim nisi proident excepteur aute non fugiat excepteur proident consequat deserunt.',
    imagenes: [
      'https://www.citymarket.com.mx/images/departamentos/FLORERIA/corte-floreria.jpg',
      'https://www.liderempresarial.com/wp-content/uploads/2019/02/Floreria-Atlantico_Photographed-by-Javier-Pierini__2018_IMG_0786.jpg',
      'https://i.pinimg.com/originals/8e/ab/7f/8eab7f3ff2e439da9b2cedc33dfd3ded.jpg',
      'https://images.clarin.com/2018/10/04/la-tienda-de-floreria-atlantico___RaLBMJblF_720x0__1.jpg',
    ],
  ),
  Proveedor(
    id: '2',
    nombre: 'Spiderman Fotógrafo XD',
    categoria: [
      'Fotografía',
      'Florería',
      'Fotografía',
      'Fotografía',
      'Florería',
    ],
    descripcion: 'Eu consequat do laboris cupidatat non duis reprehenderit non sunt excepteur excepteur. Commodo elit culpa laborum adipisicing commodo ipsum consectetur consequat sint proident cillum. Reprehenderit sunt qui tempor nostrud dolore fugiat deserunt irure enim ea. Consequat exercitation velit consectetur ipsum pariatur pariatur excepteur minim voluptate id minim id Lorem. Excepteur qui exercitation minim nulla amet. Duis id qui labore officia non occaecat non consectetur amet officia adipisicing. Enim aliquip eiusmod est minim nisi proident excepteur aute non fugiat excepteur proident consequat deserunt.',
    imagenes: [
      'https://p4.wallpaperbetter.com/wallpaper/489/636/22/spider-man-spider-man-3-peter-parker-tobey-maguire-wallpaper-preview.jpg',
      'http://4.bp.blogspot.com/-FvuQNRvIvxo/VajFHMFJQ2I/AAAAAAAADCs/3hKahGvwCuI/s1600/mood-actor-spider-tobey-maguire-peter-parker.jpg',
      'https://i.pinimg.com/originals/41/45/2c/41452c5a2c0255d720a81bdcacefa806.jpg',
      'https://i.pinimg.com/originals/a5/29/b1/a529b1c871abfe9a633edabbe7e77645.jpg',
    ],
  ),
  Proveedor(
    id: '3',
    nombre: 'Una banquetera cualquiera',
    categoria: [
      'Banquetera',
      'Banquetera',
      'Florería',
      'Banquetera',
      'Banquetera',
      'Florería',
    ],
    descripcion: 'Eu consequat do laboris cupidatat non duis reprehenderit non sunt excepteur excepteur. Commodo elit culpa laborum adipisicing commodo ipsum consectetur consequat sint proident cillum. Reprehenderit sunt qui tempor nostrud dolore fugiat deserunt irure enim ea. Consequat exercitation velit consectetur ipsum pariatur pariatur excepteur minim voluptate id minim id Lorem. Excepteur qui exercitation minim nulla amet. Duis id qui labore officia non occaecat non consectetur amet officia adipisicing. Enim aliquip eiusmod est minim nisi proident excepteur aute non fugiat excepteur proident consequat deserunt.',
    imagenes: [
      'https://asset1.zankyou.com/images/card-main/156/4c55/550/475/w/703878/-/1585800578.jpg',
      'https://4.bp.blogspot.com/-m_2XxnsRXy4/XDSMsyNBAFI/AAAAAAAAJnA/xBgmQUVQspQxxXo3SmkGZdiQCGLNI-vMwCLcBGAs/s1600/42648304_1803121036470544_3559313439136415744_o.jpg',
      'https://i.pinimg.com/originals/df/e3/89/dfe3891bb414b0b4f819a069532b682b.jpg',
      'https://i.pinimg.com/originals/94/4b/7e/944b7e07b91c2ebbeb1d2b2e7dad1ded.jpg',
    ],
  ),
  Proveedor(
    id: '4',
    nombre: 'Una banda cualquiera',
    categoria: [
      'Música',
      'Banquetera',
      'Música',
      'Música',
      'Banquetera',
      'Música',
    ],
    descripcion: 'Eu consequat do laboris cupidatat non duis reprehenderit non sunt excepteur excepteur. Commodo elit culpa laborum adipisicing commodo ipsum consectetur consequat sint proident cillum. Reprehenderit sunt qui tempor nostrud dolore fugiat deserunt irure enim ea. Consequat exercitation velit consectetur ipsum pariatur pariatur excepteur minim voluptate id minim id Lorem. Excepteur qui exercitation minim nulla amet. Duis id qui labore officia non occaecat non consectetur amet officia adipisicing. Enim aliquip eiusmod est minim nisi proident excepteur aute non fugiat excepteur proident consequat deserunt.',
    imagenes: [
      'https://www.telemundo.com/sites/nbcutelemundo/files/styles/article_cover_image/public/images/promo/article/2016/01/26/la-adictiva-banda-mexicana.jpg?itok=aALIMDZY',
      'https://www.prensario.tv/images/galleries/2618/b15bb2f4df90ef982fe4cd0c1d0af230_750x400.jpg?v=1548310895',
      'https://www.soygrupero.com.mx/wp-content/uploads/2018/05/banda-el-recodo-dinastias-musicales.jpg',
      'https://los40es00.epimg.net/los40/imagenes/2019/05/11/musica/1557582283_894941_1557583899_noticia_normal.jpg',
    ],
  ),
  Proveedor(
    id: '5',
    nombre: 'Un salón cualquiera',
    categoria: [
      'Salones',
      'Música',
      'Luz y Sonido',
      'Salones',
      'Música',
      'Luz y Sonido',
    ],
    descripcion: 'Eu consequat do laboris cupidatat non duis reprehenderit non sunt excepteur excepteur. Commodo elit culpa laborum adipisicing commodo ipsum consectetur consequat sint proident cillum. Reprehenderit sunt qui tempor nostrud dolore fugiat deserunt irure enim ea. Consequat exercitation velit consectetur ipsum pariatur pariatur excepteur minim voluptate id minim id Lorem. Excepteur qui exercitation minim nulla amet. Duis id qui labore officia non occaecat non consectetur amet officia adipisicing. Enim aliquip eiusmod est minim nisi proident excepteur aute non fugiat excepteur proident consequat deserunt.',
    imagenes: [
      'http://ebodas.com.mx/blog/wp-content/uploads/2019/01/bodas-en-haciendas-merida.jpg',
      'https://innovias.files.wordpress.com/2017/03/salon-boda3.jpg?w=564',
      'https://images.squarespace-cdn.com/content/v1/5790a23f6b8f5b36071e8aa9/1542103170375-EJ9GZWSYR08N5B14HS25/ke17ZwdGBToddI8pDm48kHH9S2ID7_bpupQnTdrPcoF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0nQwvinDXPV4EYh2MRzm-RRB5rUELEv7EY2n0AZOrEupxpSyqbqKSgmzcCPWV5WMiQ/_13A2575.jpg?format=2500w',
      'https://images.squarespace-cdn.com/content/v1/5790a23f6b8f5b36071e8aa9/1537634135858-OCNYB3IPQXAQFKEG49AS/ke17ZwdGBToddI8pDm48kHH9S2ID7_bpupQnTdrPcoF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0nQwvinDXPV4EYh2MRzm-RRB5rUELEv7EY2n0AZOrEupxpSyqbqKSgmzcCPWV5WMiQ/_13A9026.jpg',
    ],
  ),
  Proveedor(
    id: '6',
    nombre: 'Luz y Sonido cualquiera',
    categoria: [
      'Luz y Sonido',
      'Salones',
      'Luz y Sonido',
      'Luz y Sonido',
      'Salones',
      'Luz y Sonido',
    ],
    descripcion: 'Eu consequat do laboris cupidatat non duis reprehenderit non sunt excepteur excepteur. Commodo elit culpa laborum adipisicing commodo ipsum consectetur consequat sint proident cillum. Reprehenderit sunt qui tempor nostrud dolore fugiat deserunt irure enim ea. Consequat exercitation velit consectetur ipsum pariatur pariatur excepteur minim voluptate id minim id Lorem. Excepteur qui exercitation minim nulla amet. Duis id qui labore officia non occaecat non consectetur amet officia adipisicing. Enim aliquip eiusmod est minim nisi proident excepteur aute non fugiat excepteur proident consequat deserunt.',
    imagenes: [
      'https://frecuenciasm.com/wp-content/uploads/2018/03/luz-y-sonido-1-640x445.jpg',
      'https://www.eventosyfotografia.com/wp-content/uploads/2016/09/Alquiler-de-Luces-Bogota-1.jpg',
      'https://www.eventoslaroca.com/wp-content/uploads/2018/01/sonido-y-luces-aj-eventos-la-roca.jpg',
      'https://www.eventosyfotografia.com/wp-content/uploads/2016/09/002-529x400.jpg',
    ],
  ),
];