import 'package:flutter/material.dart';
import 'package:grad_project/hom-e/bnv/car/car_ditail/car_ditail.dart';

class CarListScreen extends StatefulWidget {
  final VoidCallback onBackToHome;
  final VoidCallback onNotificationTap;

  const CarListScreen({
    super.key,
    required this.onBackToHome,
    required this.onNotificationTap,
  });
  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  static const Color primaryRed = Color(0xFF9B0D15);
  static const Color lightRed = Color(0xFFE27C76);
  static const Color oceanRed = Color(0xFF6E0000);

  final TextEditingController searchController = TextEditingController();

  final List<String> allCars = [
    "#0001",
    "#0002",
    "#0003",
    "#0004",
    "#0005",
    "#0006",
    "#0007",
    "#0008",
  ];

  List<String> filteredCars = [];

  @override
  void initState() {
    super.initState();
    filteredCars = allCars;
  }

  void filterCars(String value) {
    setState(() {
      filteredCars = allCars
          .where((car) => car.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryRed,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,

        leading: Transform.translate(
          offset: const Offset(0, 25),
          child: GestureDetector(
            onTap: widget.onBackToHome,
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),

        title: Transform.translate(
          offset: const Offset(0, 25),
          child: const Text('View Cars', style: TextStyle(color: Colors.white)),
        ),

        centerTitle: true,

        actions: [
          Transform.translate(
            offset: const Offset(0, 10),
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: widget.onNotificationTap,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: primaryRed,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                _buildStatItem(
                  "Total Active Cars",
                  "1",
                  Colors.white,
                  arrowAngle: 135,
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: const Color(0xFFDFF7E2),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                _buildStatItem(
                  "Total Cars",
                  "8",
                  const Color(0xFF0068FF),
                  arrowAngle: -135,
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Container(
            height: 30,
            width: 330,
            decoration: BoxDecoration(
              color: const Color(0xFF052224),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0FFF0),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: searchController,
                      onChanged: filterCars,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: "Car Id",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: GridView.builder(
                itemCount: filteredCars.length + 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  if (index < filteredCars.length) {
                    return _buildCarItem(
                      context,
                      index == 0 ? oceanRed : lightRed,
                      filteredCars[index],
                    );
                  } else {
                    return _buildAddCarItem(context, lightRed);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    String label,
    String value,
    Color valueColor, {
    double arrowAngle = 0,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Transform.rotate(
                angle: arrowAngle * 3.1416 / 180,
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 16,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildCarItem(BuildContext context, Color color, String id) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                CarDitialScreen(onBackToHome: () {}, onNotificationTap: () {}),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            height: 97.63,
            width: 105,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/traffic_jam.png", width: 90, height: 77),
          ),
          const SizedBox(height: 5),
          Text(
            id,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildAddCarItem(BuildContext context, Color color) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              insetPadding: const EdgeInsets.all(30),
              child: Container(
                width: 339,
                height: 335,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "New Car",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 268,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "# Car ID",
                          filled: true,
                          fillColor: const Color(0xFFF8DADA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 268,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "# Driver Name",
                          filled: true,
                          fillColor: const Color(0xFFF8DADA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 45,
                      width: 218,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFA3000B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: 218,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF8DADA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Column(
        children: [
          Container(
            height: 97.63,
            width: 105,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/plus.png", width: 39, height: 39),
          ),
          const SizedBox(height: 5),
          const Text(
            "Add Car",
            style: TextStyle(
              color: Color(0xFF004444),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
