// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
// displaying items. Use functions with return types and optional/named parameters. Make sure to
// handle possible null values.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  List<String> groceryList = [];
  addItem(groceryList, 'kiwi');
  print("One item added: $groceryList");
  addItem(groceryList, 'banana', 'mango');
  print("More than one item has been added: $groceryList");
  removeItem(groceryList, 'mango');
  print("The item has been removed from the list:$groceryList");

  print("Shopping list:");
  displayItems(groceryList);
}

List addItem(List<String> item1, String item2, [String? additionalItem]) {
  item1.add(item2);
  if (additionalItem != null) {
    item1.add(additionalItem);
  }
  return item1;
}

List removeItem(List<String> item1, String item2) {
  if (item1.contains(item2)) {
    item1.remove(item2);
    print("Deleted item: '$item2'");
  } else {
    print('Item not found');
  }
  return item1;
}

List<String> displayItems(List<String> item) {
  if (item.isEmpty) {
    print('The list is empty.');
  } else {
    for (var element in item) {
      print(element);
    }
  }
  return item;
}
