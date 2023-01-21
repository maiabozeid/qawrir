class OnBoarding {
  final String image;
  final String title;
  final String description;

  OnBoarding({
    required this.image,
    required this.title,
    required this.description
  });
}

List<OnBoarding> onBoardingContents = [
  OnBoarding( image: 'assets/images/img-1-new.png',title: 'hello',description: ''),
  OnBoarding( image: 'assets/images/img-2-new.png',title: 'hello',description: ''),
  OnBoarding( image: 'assets/images/img-3-new.png',title: 'hello',description: ''),
];
