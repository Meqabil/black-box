import 'package:flutter/material.dart';
import 'shared_widgets.dart';

class ContactUsPage extends StatelessWidget {
  final bool isDark;
  const ContactUsPage({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    Color bgColor = isDark ? kNavyBlue : Colors.white;
    Color textColor = isDark ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor: kMainRed,
      extendBody: true,
      body: Column(
        children: [
          const SizedBox(height: 50),
          _buildHeader(context),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(25, 60, 25, 100),
                    children: [
                      Center(
                        child: Text(
                          "How Can We Help You?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      _buildStaticToggle(context),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: kMainRed, shape: BoxShape.circle),
                            child: const Icon(Icons.chat_bubble_outline,
                                color: Colors.white, size: 24),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "On Whatsapp Number 113",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: buildCommonBottomBar(),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context)),
          const Text("Help & FAQS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.notifications_none, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildStaticToggle(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: kFieldFillColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: const Text("FAQ",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: kMainRed, borderRadius: BorderRadius.circular(12)),
              alignment: Alignment.center,
              child: const Text("Contact Us",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }
}
