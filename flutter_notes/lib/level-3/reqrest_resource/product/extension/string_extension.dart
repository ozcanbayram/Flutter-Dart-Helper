extension ColorStringExtension on String? {
  // servisten gelen renk kodunu burada kullanılabilir hale getirelim.
  int get colorValue {
    var newColor = this?.replaceFirst('#', '0xff') ?? '';
    return int.parse(newColor);
  }
}
