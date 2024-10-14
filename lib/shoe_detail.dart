import 'package:flutter/material.dart';
import 'package:geeksynergy/add_bag_button.dart';
import 'package:geeksynergy/appbar.dart';
import 'package:geeksynergy/payment_sheet.dart';

class ShoeDetailScreen extends StatefulWidget {
  @override
  State<ShoeDetailScreen> createState() => _ShoeDetailScreenState();
}

class _ShoeDetailScreenState extends State<ShoeDetailScreen> {
  // Full text content
  final String fullText =
      "In the game's crucial moments, KD thrives. He takes over on both ends of the court, making defenders fear his unstoppable…";

  // List of shoe images (replace with your image assets)
  final List<String> shoeImages = [
    'assets/shoe_one.png',
    'assets/shoe_two.png',
    'assets/shoe_three.png',
  ];
  final List<String> sizes = [
    'UK 6',
    'UK 7',
    'UK 8',
    'UK 9',
    'UK 10',
    'UK 11',
    'UK 12',
    'UK 13'
  ];

  // Variable to track the selected shoe image (default to the first one)
  String selectedShoeImage = 'assets/shoe_two.png';

  // Variable to track the selected size
  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Top Stack for Curved background and Image overlay
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: BackgroundClipper(),
                    child: Container(
                      height: 350,
                      color: Colors.blue,
                    ),
                  ),
                  // Positioned the shoe image in the center
                  Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Image.asset(
                        selectedShoeImage, // Use the selected image here
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                  // AppBar with icons (left and right)
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Name and Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'KD13 EP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03),
                        ),
                        Text(
                          '₹12,995',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  (18 / MediaQuery.of(context).size.height)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          TextSpan(
                            text: fullText,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: MediaQuery.of(context).size.height *
                                    (18 / MediaQuery.of(context).size.height)),
                          ),
                          TextSpan(
                            text: " MORE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),

                    // Horizontal list of shoe images
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: shoeImages.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedShoeImage = shoeImages[
                                    index]; // Update the selected image
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 70,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width:
                                        selectedShoeImage == shoeImages[index]
                                            ? 3
                                            : 1,
                                    color:
                                        selectedShoeImage == shoeImages[index]
                                            ? Colors.black
                                            : Colors.transparent,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(shoeImages[index]),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(
                      'Selected Size',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height *
                              (18 / MediaQuery.of(context).size.height)),
                    ),
                    SizedBox(height: 10),

                    // Grid of Sizes
                    SizedBox(
                      height: 160,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: sizes.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 1.2,
                        ),
                        itemBuilder: (context, index) {
                          var data = sizes[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = data; // Set the selected size
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: selectedSize == data
                                      ? Colors.black
                                      : Colors.grey,
                                  width: selectedSize == data ? 3 : 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  data,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    AddBagButton(
                        buttonText: 'Add to Bag',
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => PaymentScreen()));
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Clipper for the curved background
