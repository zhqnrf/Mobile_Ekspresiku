class NewsModal {
  String category;
  String title;
  String date;
  String creator;
  String paragraph1;
  String paragraph2;
  String paragraph3;
  String imageAsset;

  NewsModal({
    required this.category,
    required this.title,
    required this.date,
    required this.creator,
    required this.paragraph1,
    required this.paragraph2,
    required this.paragraph3,
    required this.imageAsset,
  });
}

var newsModalList = [
  NewsModal(
    category: 'Artikel',
    title: 'Pentingnya Ekspresi Dalam Kehidupan Sehari-hari',
    creator: 'Budi Susanto',
    date: 'Senin, 16 Oktober 2023',
    paragraph1:
        'Ekspresi merupakan bagian penting dari komunikasi manusia yang memungkinkan kita untuk mengungkapkan perasaan, ide, dan pandangan kita. Kemampuan untuk berbicara, tertawa, menangis, atau bahkan bergerak adalah cara utama kita berinteraksi dengan dunia di sekitar kita. Ekspresi adalah bahasa universal yang tidak membutuhkan kata-kata, dan pentingnya ekspresi ini tampak di berbagai aspek kehidupan.',
    paragraph2:
        'Salah satu manfaat utama ekspresi adalah kemampuannya untuk memperkuat hubungan sosial. Saat kita senyum kepada seseorang, kita mengungkapkan kebahagiaan atau persetujuan, dan hal ini dapat meningkatkan ikatan antara individu. Ekspresi wajah dan bahasa tubuh yang benar juga dapat membantu menghindari konflik, karena orang dapat dengan cepat membaca perasaan orang lain dan beradaptasi. Selain itu, ekspresi adalah alat penting dalam mengelola stres dan emosi. Ketika kita merasa marah, sedih, atau cemas, meluapkan perasaan ini melalui ekspresi seperti berbicara dengan teman, menulis jurnal, atau bahkan hanya bergerak tubuh dapat membantu kita merasa lebih baik. Ini adalah cara alami untuk melepaskan tekanan emosional yang bisa mempengaruhi kesejahteraan kita.',
    paragraph3:
        'Akhirnya, ekspresi juga memiliki peran penting dalam seni dan budaya. Seni visual, musik, tari, dan teater semuanya adalah bentuk ekspresi yang memungkinkan seniman untuk menyampaikan gagasan, cerita, dan perasaan mereka kepada khalayak. Ini memungkinkan kita untuk menggali kedalaman kreativitas dan rasa kemanusiaan kita. Dalam dunia yang semakin terhubung melalui teknologi, kita tidak boleh melupakan pentingnya ekspresi dalam kehidupan kita sehari-hari. Dari memperkuat hubungan sosial hingga mengelola emosi dan menggali kreativitas, ekspresi adalah elemen penting yang membantu kita menjadi manusia yang lebih baik.',
    imageAsset: 'assets/news/gambar1.jpg',
  ),
  NewsModal(
    category: 'Pengetahuan',
    title: 'Kesehatan Mental dan Pentingnya Ekspresi',
    creator: 'Yor Forger',
    date: 'Rabu, 17 Oktober 2023',
    paragraph1:
        'Kesehatan mental adalah aspek yang krusial dalam kualitas hidup seseorang. Salah satu faktor penting dalam menjaga kesehatan mental adalah melalui ekspresi. Mengungkapkan perasaan dan emosi melalui ekspresi seperti bicara terbuka, seni, atau olahraga adalah cara yang efektif untuk mengelola stres, kecemasan, dan depresi.',
    paragraph2:
        'Ekspresi juga membantu dalam berkomunikasi dengan orang di sekitar kita. Saat kita berani mengungkapkan perasaan, orang lain dapat lebih memahami kita. Ini memperkuat hubungan sosial dan mencegah isolasi sosial. Kesenian, seperti lukisan dan musik, dapat menjadi sarana ekspresi yang sangat bermanfaat bagi mereka yang sulit mengungkapkan diri secara verbal.',
    paragraph3:
        'Pentingnya ekspresi dalam kesehatan mental tidak dapat diabaikan. Seseorang yang dapat dengan bebas mengungkapkan perasaannya cenderung memiliki kualitas hidup yang lebih baik dan lebih bahagia. Oleh karena itu, mari kita jadikan ekspresi sebagai alat penting dalam merawat kesehatan mental kita dan mendukung orang-orang di sekitar kita dalam melakukan hal yang sama.',
    imageAsset: 'assets/news/gambar2.jpg',
  ),
  NewsModal(
    category: 'Tips',
    title: 'Ekspresi dan Kesehatan Mental: Memahami Diri Sendiri',
    creator: 'Anya Forger',
    date: 'Kamis, 18 Oktober 2023',
    paragraph1:
        'Mengapa ekspresi penting untuk kesehatan mental? Karena itu adalah cara kita memahami dan mengelola diri sendiri. Ekspresi memungkinkan kita untuk mengidentifikasi perasaan, kekhawatiran, dan kegembiraan kita. Dengan mengungkapkannya, kita dapat mencari dukungan dan solusi ketika dibutuhkan.',
    paragraph2:
        'Melalui ekspresi, kita juga dapat meredakan tekanan emosional. Misalnya, berbicara dengan teman dekat tentang apa yang mengganggu pikiran kita dapat membantu melepaskan beban yang kita rasakan. Seni dan kreativitas juga dapat menjadi saluran ekspresi yang kuat untuk mengatasi stres dan mengekspresikan hal-hal yang sulit diungkapkan dengan kata-kata.',
    paragraph3:
        'Jadi, jangan ragu untuk berbicara, menulis, atau mengekspresikan diri melalui seni. Ini adalah langkah penting dalam menjaga kesehatan mental kita. Dengan ekspresi yang sehat, kita dapat memahami diri sendiri dengan lebih baik dan menjalani kehidupan yang lebih seimbang secara emosional.',
    imageAsset: 'assets/news/gambar3.jpg',
  ),
  NewsModal(
    category: 'Artikel',
    title: 'Kesehatan Mental dan Kreativitas: Peran Ekspresi',
    creator: 'Liam Bonaparte',
    date: 'Jumat, 19 Oktober 2023',
    paragraph1:
        'Kreativitas sering kali menjadi alat yang kuat dalam mengatasi tantangan kesehatan mental. Ekspresi melalui seni, seperti melukis, menulis, atau bermain musik, dapat membantu seseorang meredakan stres, mengurangi kecemasan, dan meningkatkan kesejahteraan emosional.',
    paragraph2:
        'Ketika seseorang merasa sulit untuk mengungkapkan perasaan mereka dengan kata-kata, seni memberikan sarana alternatif. Ini memungkinkan individu untuk mengekspresikan apa yang ada di dalam hati mereka dengan cara yang kreatif dan terapeutik.',
    paragraph3:
        'Pentingnya kreativitas dan ekspresi dalam menjaga kesehatan mental telah diakui secara luas. Mendorong individu untuk mengekspresikan diri mereka sendiri melalui berbagai bentuk seni adalah langkah yang positif dalam mendukung kesejahteraan mental dan emosional.',
    imageAsset: 'assets/news/gambar4.jpg',
  ),
  NewsModal(
    category: 'Tips',
    title:
        'Mendukung Orang Lain: Cara Menggunakan Ekspresi untuk Kesehatan Mental',
    creator: 'Sulistyowati',
    date: 'Sabtu, 20 Oktober 2023',
    paragraph1:
        'Ketika kita melihat teman atau keluarga yang mungkin mengalami masalah kesehatan mental, ekspresi dapat menjadi alat penting untuk memberikan dukungan. Mendengarkan dengan empati, memberikan ruang bagi mereka untuk berbicara, atau bahkan bersama-sama mengekspresikan diri melalui seni dapat membantu mereka merasa didengar dan didukung.',
    paragraph2:
        'Dalam beberapa kasus, orang mungkin merasa sulit untuk mengungkapkan perasaan mereka sendiri. Menciptakan lingkungan yang aman di mana mereka merasa nyaman untuk berbicara atau mengekspresikan diri melalui seni adalah langkah yang penting dalam mendukung kesehatan mental orang lain.',
    paragraph3:
        'Jadi, mari kita gunakan ekspresi sebagai alat untuk menghubungkan, mendukung, dan merawat kesehatan mental kita sendiri dan orang-orang di sekitar kita.',
    imageAsset: 'assets/news/gambar5.jpg',
  ),
  NewsModal(
    category: 'Artikel',
    title: 'Kesehatan Mental di Tempat Kerja: Peran Ekspresi',
    creator: 'Abu al Maunsy',
    date: 'Minggu, 21 Oktober 2023',
    paragraph1:
        'Pentingnya kesehatan mental di tempat kerja semakin diakui. Ekspresi adalah salah satu cara untuk mengelola tekanan dan stres di lingkungan kerja. Berbicara terbuka tentang perasaan, bekerja sama dalam tim, atau mencari bantuan jika diperlukan adalah langkah-langkah yang mendukung kesehatan mental di tempat kerja.',
    paragraph2:
        'Selain itu, promosi lingkungan kerja yang mendorong kreativitas dan ekspresi dapat meningkatkan kesejahteraan karyawan. Aktivitas seperti lokakarya seni atau sesi berbagi cerita dapat membantu karyawan merasa lebih terhubung dan nyaman di lingkungan kerja.',
    paragraph3:
        'Kesehatan mental di tempat kerja bukan hanya tanggung jawab individu, tetapi juga perusahaan. Dengan mendukung ekspresi dan menciptakan lingkungan yang positif, perusahaan dapat berperan penting dalam menjaga kesehatan mental karyawan mereka.',
    imageAsset: 'assets/news/gambar6.jpg',
  ),
  NewsModal(
    category: 'Tips',
    title: 'Kesehatan Mental dan Pendidikan: Mendukung Ekspresi Siswa',
    creator: 'Sularno Marsudi',
    date: 'Senin, 22 Oktober 2023',
    paragraph1:
        'Siswa juga dapat mengalami tekanan dan masalah kesehatan mental. Pendidikan yang peduli dengan kesehatan mental siswa harus mendorong ekspresi sebagai alat untuk mengatasi tantangan ini. Siswa harus merasa bahwa mereka dapat berbicara terbuka tentang perasaan mereka dan mengekspresikan diri mereka.',
    paragraph2:
        'Selain itu, seni dan kegiatan ekstrakurikuler seperti musik, seni rupa, atau teater dapat menjadi sarana untuk mengembangkan ekspresi kreatif. Ini membantu siswa mengatasi stres akademis dan merangsang kreativitas mereka.',
    paragraph3:
        'Kesehatan mental siswa adalah bagian integral dari pendidikan. Mendorong ekspresi dan kreativitas adalah salah satu langkah penting dalam mendukung perkembangan dan kesejahteraan siswa.',
    imageAsset: 'assets/news/gambar7.jpg',
  ),
  NewsModal(
    category: 'Artikel',
    title: 'Mendukung Kesehatan Mental di  Era Digital: Peran Ekspresi',
    creator: 'Alifian Baruna',
    date: 'Selasa, 23 Oktober 2023',
    paragraph1:
        'Dalam dunia yang semakin terhubung melalui teknologi, ekspresi tetap menjadi elemen penting dalam kesehatan mental. Penggunaan media sosial, terutama, dapat memengaruhi kesejahteraan mental seseorang. Menggunakan ekspresi secara positif dalam berkomunikasi daring adalah langkah yang penting untuk mendukung kesehatan mental di era digital ini.',
    paragraph2:
        'Penting untuk mengenali dampak ekspresi digital terhadap perasaan kita. Menciptakan lingkungan online yang mendukung, menghindari cyberbullying, dan menggunakan media sosial untuk berbagi pengalaman positif dapat membantu menjaga kesehatan mental kita di era digital ini.',
    paragraph3:
        'Jadi, mari kita terus menghargai pentingnya ekspresi dalam menjaga kesehatan mental kita, baik dalam kehidupan sehari-hari maupun di dunia daring.',
    imageAsset: 'assets/news/gambar8.jpg',
  ),
  NewsModal(
    category: 'Tips',
    title: 'Tantangan Kesehatan Mental di Masa Pandemi: Cara Mengatasinya',
    creator: 'Bella Pratiwi',
    date: 'Kamis, 26 Januari 2023',
    paragraph1:
        'Pandemi COVID-19 telah membawa tantangan serius terhadap kesehatan mental banyak orang. Isolasi, kekhawatiran, dan ketidakpastian dapat memberikan dampak negatif pada kesejahteraan mental kita. Namun, ada langkah-langkah yang dapat diambil untuk mengatasi tantangan ini.',
    paragraph2:
        'Mengatur jadwal harian yang terstruktur, menjaga komunikasi dengan teman dan keluarga, serta menjalani rutinitas olahraga dan meditasi adalah beberapa cara untuk menjaga kesehatan mental selama pandemi. Selain itu, jangan ragu untuk mencari bantuan dari profesional jika Anda merasa perlu.',
    paragraph3:
        'Mari bersama-sama melewati masa sulit ini dengan peduli pada kesehatan mental kita sendiri dan orang lain. Teruslah berhubungan dan berbicara dengan orang-orang terdekat, karena kita tidak sendiri dalam menghadapi tantangan ini.',
    imageAsset: 'assets/news/gambar9.jpg',
  ),
  NewsModal(
    category: 'Berita',
    title:
        'WHO: 260 Juta Orang di Asia Tenggara Hidup dengan Masalah Kesehatan Mental',
    creator: 'Shofiyah Sajidah',
    date: 'Kamis, 15 Januari 2023',
    paragraph1:
        'Sebuah laporan dari Organisasi Kesehatan Dunia (WHO) telah menyoroti masalah terkait kesehatan mental di Asia Tenggara. Menurut laporan tersebut, sekitar 260 juta orang di kawasan ini, setara dengan satu dari tujuh penduduknya kini menghadapi tantangan kesehatan mental."Kondisi kesehatan mental sangat umum terjadi di kawasan ini," kata Dr Andrea Bruni, penasihat regional WHO untuk kesehatan mental di Asia Tenggara, kepada Channel News Asia (CNA), yang dikutip Minggu (15/10/2023). Hal yang juga disorot adalah terdapat kesenjangan penanganan yang besar antar negara. Hal ini dipaparkan Dr. Andrea Bruni, penasihat regional WHO untuk kesehatan mental di Asia Tenggara.',
    paragraph2:
        '"Di beberapa negara, kesenjangan pengobatan mencapai 90 persen, yang berarti bahwa hingga 90 persen dari mereka yang membutuhkan kesehatan mental tidak menerima pengobatan dan perawatan yang sesuai  dan tepat waktu, atau tidak menerima pengobatan dan perawatan sama sekali," ujarnya pada Mental Health Day (Hari Kesehatan Mental) pada 10 Oktober.Selain kesenjangan dalam pengobatan, stigma terhadap kesehatan mental masih menjadi salah satu masalah utama di Asia Tenggara. Dr. Bruni mencatat bahwa stigma ini seringkali berubah menjadi diskriminasi."Seringkali, stigma berubah menjadi diskriminasi terhadap orang-orang yang menderita kondisi ini. Stigma terutama terjadi pada orang-orang dengan kondisi kesehatan mental yang parah," tuturnya.',
    paragraph3:
        'Dr. Bruni mengutarakan bahwa mitos umum di wilayah ini adalah bahwa individu dengan kondisi seperti itu perlu menerima pengobatan di lembaga kesehatan mental, rumah sakit jiwa, dan sejenisnya padahal menurutnya ada alternatif lain. "Faktanya, masyarakat dengan kondisi kesehatan jiwa perlu mengakses layanan yang berbasis komunitas, lebih mudah diakses dan lebih menghormati hak asasi manusia," tegas Dr. Bruni.Meskipun hal ini menjadi tantangan, Dr. Bruni menekankan bahwa perubahan kini sedang terjadi. Keterlibatan aktif dan pemberdayaan orang-orang dengan pengalaman hidup dan pengasuh dianggap sebagai kunci dalam merancang kebijakan dan layanan kesehatan mental yang lebih baik.“Segala sesuatunya berubah melalui keterlibatan aktif dan pemberdayaan orang-orang dengan pengalaman hidup dan pengasuh, (yang) harus menjadi aktor integral dan mendasar dalam merancang kebijakan dan layanan kesehatan mental," jelas Dr. Bruni.',
    imageAsset: 'assets/news/gambar10.jpg',
  ),
];
