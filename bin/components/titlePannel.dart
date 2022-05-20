//-- 100 for main pannel
//-- 80 for any child pannel

void titlePannel(String? title, String color, int pannelLength) {
  final String space = pannelLength == 100 ? " " * 30 : " " * 40;
  double length = 0;

  if (title != null) {
    if ((title.length) % 2.0 != 0.0) {
      title = title + " ";
    }

    length = ((pannelLength - (title.length)) / 2.0) - 1;
  } else {
    length = 49;
  }
  title = (title != null) ? title : "";

  print(color +
      space +
      "#" * pannelLength +
      "\n" +
      space +
      "#" +
      " " * length.toInt() +
      title +
      " " * length.toInt() +
      "#" +
      "\n" +
      space +
      "#" * pannelLength);
}
