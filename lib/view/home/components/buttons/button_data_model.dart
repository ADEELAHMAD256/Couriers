class HomeButtonDataModel {
  String icon;
  String title;
  HomeButtonDataModel({required this.title, required this.icon});
}

List<HomeButtonDataModel> buttonModel = [
  HomeButtonDataModel(
    title: "New Customer Address",
    icon: "assets/icons/add_person.svg",
  ),
  HomeButtonDataModel(
    title: "Address Book",
    icon: "assets/icons/address_book.svg",
  ),
  HomeButtonDataModel(
    title: "Withdraw Balance",
    icon: "assets/icons/wallet.svg",
  ),
];
