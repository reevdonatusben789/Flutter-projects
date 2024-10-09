import 'package:flutter/material.dart';

class MyAssign extends StatelessWidget {
  const MyAssign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network('https://i0.wp.com/picjumbo.com/wp-content/uploads/breathtaking-bali-nature-free-photo.jpg?w=600&quality=80'),
          Image.network('https://media.istockphoto.com/id/636761588/photo/used-brushes-on-an-artists-palette-of-colorful-oil-paint.jpg?s=612x612&w=0&k=20&c=38YQxVJVWnNfvGtlb7AXMx_ItyHZMEdmWenNkWNQ91g='),
          Container(
            height: 200,
            width: 375,
            color: Colors.red,
            child: Image.network(
              fit: BoxFit.cover,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8_OP9TZ0iDuVeo4LKhdSaeR8k1GBkGCzu0g&s'),
          ),
        ],
      ),
    );
  }
}
