import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Get user data and extract ID
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Get user orders
    String ordersJson = await fetchUserOrders(userId);
    List<dynamic> userOrders = jsonDecode(ordersJson);

    // Calculate total price
    double total = 0;
    for (String product in userOrders) {
      String priceStr = await fetchProductPrice(product);
      total += double.parse(priceStr);
    }

    return total;
  } catch (error) {
    return -1;
  }
} 