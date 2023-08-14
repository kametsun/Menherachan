enum ImageType {
  lion,
  raqoon,
  rabbit,
  monkey,
  panda,
  dog;

  static ImageType fromString(String type) {
    switch (type) {
      case 'lion':
        return ImageType.lion;
      case 'raqoon':
        return ImageType.raqoon;
      case 'rabbit':
        return ImageType.rabbit;
      case 'monkey':
        return ImageType.monkey;
      case 'panda':
        return ImageType.panda;
      case 'dog':
        return ImageType.dog;
      default:
        return ImageType.lion;
    }
  }

  get path {
    switch (this) {
      case ImageType.lion:
        return 'assets/image/lion.png';
      case ImageType.raqoon:
        return 'assets/image/raqoon.png';
      case ImageType.rabbit:
        return 'assets/image/rabbit.png';
      case ImageType.monkey:
        return 'assets/image/monkey.png';
      case ImageType.panda:
        return 'assets/image/panda.png';
      case ImageType.dog:
        return 'assets/image/dog.png';
      default:
        return 'assets/image/lion.png';
    }
  }
}
