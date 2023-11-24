class ExpresionType {
  String name;
  String description;
  String detail;
  String imageAsset;

  ExpresionType({
    required this.name,
    required this.description,
    required this.detail,
    required this.imageAsset,
  });
}

var expresionTypeList = [
  ExpresionType(
    name: 'Bahagia',
    description:
        'Kebahagiaan adalah emosi paling positif yang kita semua alami. Ini memiliki hubungan dengan kepuasan, kepuasan dan kegembiraan. Selain itu, ia memiliki hubungan erat dengan kesejahteraan psikologis, kesehatan, dan umur panjang kita. Kebahagiaan dianggap sebagai salah satu emosi dasar manusia, hal-hal yang kita pikir akan menciptakan kebahagiaan cenderung sangat dipengaruhi oleh budaya. Misalnya, pengaruh budaya populer modern cenderung menekankan bahwa mencapai hal-hal tertentu seperti membeli rumah atau memiliki pekerjaan bergaji tinggi akan menghasilkan kebahagiaan.',
    detail:
        'Cirinya adalah munculnya ekspresi wajah tersenyum, bahasa tubuh santai, nada suara yang ceria dan menyenangkan. Beberpa nuansa bahagia misalnya : sukacita, lega, kepuasan, kebanggaan, kenikmatan sensual, kegairahan, kepuasan, euforia. dll.',
    imageAsset: 'assets/bahagia.png',
  ),
  ExpresionType(
    name: 'Sedih',
    description:
        'Kesedihan ditandai dengan perasaan seperti kekecewaan, kesedihan dan keputus-asaan. Saat individu mengalami kebahagiaan, maka sebalinya juga akan mengalami kesedihan silih berganti dari waktu ke waktu. Meskipun kesediahan normal dan alami, kesedihan yang berkepanjangan dapat berubah menjadi depresi yang dapat mengganggu aktifitas. Pada akhirnya akan muncul beberapa strategi untuk menghadapi dang mengatasi kesedihan yang akan membuat emosi menjadi lebih stabil.',
    detail:
        'Menangis, Suasana hati yang buruk, Kelesuan, Penarikan dari orang lain; dll. Beberpa nuansa kesedihan antara lain : duka, keputusasaan, melankolis, kesendirian, kekesalan, putus asa, depresi',
    // openTime: '09:00 - 14:30',
    // ticketPrice: 'Rp 20000',
    imageAsset: 'assets/sedih.png',
  ),
  ExpresionType(
    name: 'Takut',
    description:
        'Ketakutan adalah emosi yang kuat yang terkait erat dengan kelangsungan hidup manusia dari sudut pandang evolusi. Hal ini juga terkait dengan respons melawan atau menghindar karena ketakutan dapat mengindikasikan adanya ancaman. Ketakutan adalah emosi yang kuat yang juga dapat memainkan peran penting dalam kelangsungan manusia. Ketika individu menghadapi semacam bahaya dan mengalami ketakutan, maka mengalami apa yang dikenal sebagai respons melawan atau menghindarinya.',
    detail:
        'Otot-otot menjadi tegang, detak jantung dan pernapasan meningkat, pikiran menjadi lebih waspada, mempersiapkan tubuh untuk lari dari bahaya atau berdiri dan melawan, ekspresi wajah seperti melebarkan mata dan menarik dagu ke belakang, bahasa tubuhb berupa upaya untuk bersembunyi atau kutu dari ancaman, reaksi fisiologis seperti pernapasan cepat dan detak jantung.',
    // openTime: '24 hours',
    // ticketPrice: 'Free',
    imageAsset: 'assets/takut.png',
  ),
  ExpresionType(
    name: 'Jijik',
    description:
        'Jijik adalah keadaan penolakan untuk sesuatu yang tidak menyenangkan. Secara evolusi rasa jijik berevolusi sebagai reaksi terhadap makanan yang mungkin berbahaya atau fatal. Jadi umumnya rasa jijik adalah reaksi yang lebih umum terhadap penghlihatan, rasa atau bau yang menjadi tidak enak. Beberapa situasi yang tidak diinginkan lainnya juga dapat menimbulkan rasa jijik, rasa jijik moral muncul ketika melihat orang lain terlibat dalam perilaku tidak bermoral.',
    detail:
        'Ciri ciri emosi jijik adalah tubuh berpaling dari objek jijik; reaksi muntah atau mual, ekspresi wajah yang mengernyitkan hidung dan melengkungkan bibir atas',
    // openTime: '06:00 - 17:00',
    // ticketPrice: 'Rp 3000',
    imageAsset: 'assets/jijik.png',
  ),
  ExpresionType(
    name: 'Terkejut',

    description:
        'Terkejut dikaitkan dengan keadaan fisiologis respons terhadap munculnya peristiwa yang tak terduga (kejutan). Kondisi ini bisa positif, dan bisa juga negatif atau bahkan netral. Emosi kejutan biasanya muncul cukup singkat dan ditandai dengan respons kejutan fisiologis setelah sesuatu yang tidak terduga membuat individu kaget.',
    detail:
        'Ciri ciri dari kondisi emosi terkejut munculnya ekspresi wajah mengangkat alis, melebarkan mata, dan membuka mulut, respon fisik berupa melompat ke belakang, reaksi verbal mungkin berteriak, menjerit, atau terengah-engah.',
    // openTime: '24 hours',
    // ticketPrice: 'Free',
    imageAsset: 'assets/terkejut.png',
  ),
  ExpresionType(
    name: 'Marah',
    description:
        'Kemarahan adalah emosi yang sangat kuat yang mencakup permusuhan, agitasi dan frustrasi. Emosi marah sering ditampilkan melalui ekspresi wajah, bahasa tubuh, nada suara dan perilaku agresif. Kemarahan adalah kondisi yang memiliki dua sisi yaitu bisa baik dan juga bisa buruk. Kemarahan bisa menjadi emosi yang sangat kuat yang ditandai dengan perasaan permusuhan, agitasi, frustrasi, dan antagonisme terhadap orang lain. Seperti rasa takut, kemarahan dapat berperan dalam respons tubuh melawan atau lari.',
    detail:
        'Ciri ciri emosi marah munculnya ekspresi wajah cemberut atau melotot, bahasa tubuh berupa sikap tegas atau berpaling, nada suara berbicara lantang, kasar atau berteriak, respon fisik berkeringat atau muka memerah, timbulnya perilaku agresif seperti memukul, atau melempar benda.',
    imageAsset: 'assets/marah.png',
  ),
  ExpresionType(
    name: 'Kecewa',
    description:
        'Ekspresi kecewa adalah reaksi emosional yang timbul ketika seseorang merasa terpukul atau frustrasi karena harapannya atau keinginannya tidak terpenuhi. Dalam konteks ini, ketidakpuasan merujuk pada perasaan negatif yang muncul ketika seseorang mengharapkan sesuatu yang penting atau diinginkan, namun kenyataannya tidak sesuai dengan ekspektasi mereka. Ini dapat melibatkan situasi, orang, atau hasil yang tidak memuaskan',
    detail:
        'Ekspresi kecewa adalah cara seseorang mengekspresikan perasaan kecewa atau ketidakpuasan terhadap sesuatu. Ciri-ciri umum ekspresi kecewa meliputi ekspresi wajah negatif, mata yang suram, napas dalam-dalam, gestur tubuh negatif, ekspresi verbal negatif, bahasa tubuh tertutup, suara yang rendah, tanda-tanda fisik seperti penurunan energi, dan kecenderungan untuk menarik diri dari situasi atau orang yang menyebabkan kecewa. Cara ekspresi kecewa bervariasi berdasarkan individu, budaya, dan tingkat kekecewaan yang dialami. Kecewa adalah respon alami terhadap pengalaman negatif atau tidak memuaskan.',
    // openTime: '24 hours',
    // ticketPrice: 'Free',
    imageAsset: 'assets/kecewa.png',
  ),
  ExpresionType(
    name: 'Puas',
    description:
        'Ekspresi puas adalah reaksi emosional yang muncul ketika seseorang merasa senang, content, atau puas dengan sesuatu yang telah terjadi atau dicapai. Ini adalah ekspresi positif yang mencerminkan kepuasan atau kebahagiaan terhadap hasil atau pencapaian yang memenuhi harapan atau keinginan seseorang. .',
    detail:
        'Ciri-ciri umum dari ekspresi kepuasan termasuk senyuman, ekspresi wajah positif, relaksasi, ekspresi verbal positif, gestur tubuh positif, gelombang tangan, tanda-tanda fisik seperti peningkatan denyut jantung, ekspresi mata yang cerah, dan gestur positif terhadap orang lain. Namun, cara seseorang mengekspresikan kepuasan dapat bervariasi tergantung pada kepribadian dan budaya mereka.',
    imageAsset: 'assets/puas.png',
  ),
];
