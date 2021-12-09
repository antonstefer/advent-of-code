import 'tasks/one.dart';
import 'tasks/three.dart';
import 'tasks/two.dart';

final tasks = [
  () => one(),
  () => two(),
  () => three(),
];

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide task index');
    return;
  } else {
    final taskIndex = (int.tryParse(arguments.first) ?? 0) - 1;
    if (taskIndex < 0 || taskIndex >= tasks.length) {
      print('Task index out of range');
      return;
    }
    tasks[taskIndex]();
  }
}
