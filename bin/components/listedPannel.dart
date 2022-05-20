
void pannelItem(String? title, String color) {
  final String space = " "*45;
  double length = 0;

  if (title != null) {
    if ((title.length) % 2.0 != 0.0) {
      title = title + " ";
    }

    length = ((70 - (title.length)) / 2.0) - 1;
  } else {
    length = 49;
  }
  title = (title != null) ? title : "";

  print(color +
      space +
      "*" +
      " " * length.toInt() +
      title +
      " " * length.toInt() +
      "*" );
}

