void main(List<String> args) {
  change();
  local();
}

int? name;

void local() {
  String namae;
  namae = 'Aung Aung';
  print(namae);
}

var result = const [];
final result1 = const [];
const result2 = [];

var symbol = #hello;

void change() {
  result = [10];
  print(symbol);

  // can't change final variable
  // result1 = [11];

  // can't change const variable
  // result2 = [11];
}
