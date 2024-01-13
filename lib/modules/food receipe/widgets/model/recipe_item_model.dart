class ReceipeModel {
  String title;
  String subTitle;
  String image;

  ReceipeModel(this.title, this.subTitle, this.image);
}

List<ReceipeModel> receipeData = [
  ReceipeModel('Traditional spare ribs baked', 'By Chef John',
      'assets/images/receipe_handi.png'),
  ReceipeModel('Lamb chops with fruity couscous and mint..', 'By Spicy Nelly',
      'assets/images/receipe_salan.png'),
  ReceipeModel('spice roasted chicken with flavored rice', 'By Mark Kelvin',
      'assets/images/receipe_mutton.png'),
  ReceipeModel('Chinese style Egg fried rice with sliced pork..',
      'By laura wilson', 'assets/images/recipe_kabab.png'),
  ReceipeModel('Lamb chops with fruity couscous and mint..', 'By Spicy Nelly',
      'assets/images/receipe_salan.png'),
  ReceipeModel('Traditional spare ribs baked', 'By Chef John',
      'assets/images/receipe_handi.png'),
  ReceipeModel('Traditional spare ribs couscous', 'By Chef Nelly',
      'assets/images/receipe_mutton.png'),
  ReceipeModel(
      'Traditional spare ribs', 'By Chef', 'assets/images/recipe_kabab.png'),
];
