import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 🔵 APP BAR
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Daniel",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              "What are you craving?",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/300",
              ),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // 🔍 SEARCH BAR
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // 🟢 OFFER CARD
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F3E8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "35% OFF on Burgers!",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.green),
                          ),
                          child: Text("Buy now"),
                        )
                      ],
                    ),
                  ),
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/5787/5787016.png",
                    height: 100,
                  )
                ],
              ),
            ),

            const SizedBox(height: 15),

            // 🍔 CATEGORY ROW
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryItem("Offers", true),
                  categoryItem("Burger", false),
                  categoryItem("Pizza", false),
                  categoryItem("Drink", false),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // 🍔 FOOD GRID
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  FoodCard(
                    name: "Classic Burger",
                    price: "\$12.75",
                    rating: "4.7",
                    image:
                    "https://images.unsplash.com/photo-1568901346375-23c9450c58cd",
                  ),
                  FoodCard(
                    name: "Cola",
                    price: "\$3.99",
                    rating: "4.4",
                    image:
                    "https://images.unsplash.com/photo-1622483767028-3f66f32aef97",
                  ),
                  FoodCard(
                    name: "Donut",
                    price: "\$2.50",
                    rating: "4.8",
                    image:
                    "https://images.unsplash.com/photo-1551024601-bec78aea704b",
                  ),
                  FoodCard(
                    name: "Burger Special",
                    price: "\$15.00",
                    rating: "4.9",
                    image:
                    "https://images.unsplash.com/photo-1550547660-d9450f859349",
                  ),
                  FoodCard(
                      name: "Budded",
                      price: "\$16.20",
                      rating: "3.9",
                      image: "https://images.unsplash.com/photo-1551024601-bec78aea704b"
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      // 🔵 BOTTOM NAV
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }

  Widget categoryItem(String title, bool active) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: active ? Colors.green : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

// 🍔 FOOD CARD WIDGET
class FoodCard extends StatelessWidget {
  final String name;
  final String price;
  final String rating;
  final String image;

  const FoodCard({
    super.key,
    required this.name,
    required this.price,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(price, style: const TextStyle(color: Colors.green)),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.orange),
                    Text(rating),
                    const Spacer(),
                    const Icon(Icons.add_circle, color: Colors.green),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}