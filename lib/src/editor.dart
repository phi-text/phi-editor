import 'dart:io';
import 'dart:math' show min;

import 'package:curses_abst/curses_abst.dart';
import 'package:phi_cmux/phi_cmux.dart';

WindowManager windows;

void init(String file) {
  if (windows != null)
    throw new StateError('Already initialized!');
  windows = new WindowManager();
  Window window = windows.activeTree.root.window;
  if (file.isNotEmpty) { // TODO Actual implementation
    new File(file).readAsLines().then((List<String> lines) {
      for (int i = 0; i < min(lines.length, window.height); i++)
        window.write(i, 0, lines[i].substring(0, min(lines[i].length, window.width)));
    });
  }
}