import 'package:responsive_dashboard/utils/app_images.dart';

class UserInfoModel {
  final String image, title, subtitle;

  const UserInfoModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<UserInfoModel> userInfoItems =const [
  UserInfoModel(
    image: Assets.imagesAvatar1,
    title: 'Ahmed Sherif',
    subtitle: 'Sam4base@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesAvatar2,
    title: 'Madrani Andi',
    subtitle: 'Madrani@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesAvatar3,
    title: 'Ahmed Ali',
    subtitle: 'AhmedAli@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesAvatar3,
    title: 'Ahmed Ali',
    subtitle: 'AhmedAli@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesAvatar3,
    title: 'Ahmed Ali',
    subtitle: 'AhmedAli@gmail.com',
  ),
  UserInfoModel(
    image: Assets.imagesAvatar3,
    title: 'xMan',
    subtitle: 'XC@gmail.com',
  ),

];
