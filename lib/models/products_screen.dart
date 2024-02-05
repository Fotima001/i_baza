import 'package:my_i_baza/models/products_model.dart';
import '../utils/icons.dart';

//const String info="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";


class Repository{
  static List<ProductsModel> productsList = [
    ProductsModel(
        title: "Kiyim va poyabzallar",
        imagePath: AppImages.pc,
        ),
    ProductsModel(
      title: "Uy uchun",
      imagePath: AppImages.pc2,
    ),
    ProductsModel(
      title: "Bolalar uchun",
      imagePath: AppImages.pc3,
    ),ProductsModel(
      title: "Oziq-ovqat mahsulotlari",
      imagePath: AppImages.pc4,
    ),ProductsModel(
      title: "Go‘zalik va gigiyena",
      imagePath: AppImages.pc5,
    ),ProductsModel(
      title: "Dorixona",
      imagePath: AppImages.pc6,

    ),ProductsModel(
      title: "“Zoo” mahsulotlar",
      imagePath: AppImages.pc7,
    ),ProductsModel(
      title: "Maishiy kimyo mahsulotlari",
      imagePath: AppImages.pc8,
    ),ProductsModel(
      title: "Sport mahsulotlari",
      imagePath: AppImages.pc9,
    ),ProductsModel(
      title: "avtomobillar uchun",
      imagePath: AppImages.pc10,
    ),ProductsModel(
      title: "elektronika",
      imagePath: AppImages.pc11,
    ),ProductsModel(
      title: "Kompyuterlar",
      imagePath: AppImages.pc12,
    ),ProductsModel(
      title: "maishiy taxnika",
      imagePath: AppImages.pc13,
    ),ProductsModel(
      title: "mebel",
      imagePath: AppImages.pc14,
    ),ProductsModel(
      title: "qutulish va ta'mirlash",
      imagePath: AppImages.pc16,
    ),ProductsModel(
      title: "maktab va ofis uchun ",
      imagePath: AppImages.pc17,
    ),ProductsModel(
      title: "gullar",
      imagePath: AppImages.pc18,
    ),ProductsModel(
      title: "zargarlik buyumlari",
      imagePath: AppImages.pc19,
    ),ProductsModel(
      title: "uy va bog'",
      imagePath: AppImages.pc20,
    ),ProductsModel(
      title: "uskunalar",
      imagePath: AppImages.pc21,
    ),
    // ProductsModel(
    //     title: "Iphone",
    //     price: "12000000.0\nso'm",
    //     description: "11999998.0 so'm",
    //     info: info,
    //     imagePath: AppImages.iphone),
    // ProductsModel(
    //     title: "Keyboard and Mouse",
    //     price: "450000.0\nso'm",
    //     description: "4499799.0 so'm",
    //     info: info,
    //     imagePath: AppImages.keyboardMouse),
    // ProductsModel(
    //     title: "MacBook",
    //     price: "14000000.0\nso'm",
    //     description: "13999994.0 so'm",
    //     info: info,
    //     imagePath: AppImages.mac),
    // ProductsModel(
    //     title: "PC",
    //     price: "7000000.0\nso'm",
    //     description: "6999899.0 so'm",
    //     info: info,
    //     imagePath: AppImages.pc),
    // ProductsModel(
    //     title: "Speaker",
    //     price: "500000.0\nso'm",
    //     description: "499980.0 so'm",
    //     info: info,
    //     imagePath: AppImages.speaker),
  ];
}