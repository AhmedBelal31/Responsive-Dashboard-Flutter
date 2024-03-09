import '../utils/app_images.dart';

class AllExpensesItemModel {
  final String image, title, date;

  final double price;

  const AllExpensesItemModel({
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });
}

List<AllExpensesItemModel> allExpansesItems = const [
  AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2024',
      price: 20.129),
  AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2024',
      price: 20.129),
  AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2024',
      price: 20.129),
];
