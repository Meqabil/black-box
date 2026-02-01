import 'package:flutter/material.dart';
import 'shared_widgets.dart';
import 'contact_us_page.dart';

class HelpFAQPage extends StatefulWidget {
  final bool isDark;
  const HelpFAQPage({super.key, required this.isDark});

  @override
  State<HelpFAQPage> createState() => _HelpFAQPageState();
}

class _HelpFAQPageState extends State<HelpFAQPage> {
  String searchQuery = "";

  final List<Map<String, String>> faqData = [
    {
      "question": "How to use BlackBox?",
      "answer":
          "Install the black box device in your car, log in to the app, and start driving. The app will automatically record and display your driving data."
    },
    {
      "question": "How much does it cost to use BlackBox?",
      "answer":
          "The cost depends on the selected plan and services. Please contact the company for pricing details."
    },
    {
      "question": "How to contact support?",
      "answer":
          "You can contact support by WhatsApp using the official company number or by visiting the company office during working hours."
    },
    {
      "question": "How can I reset my password if I forget it?",
      "answer":
          "Use the Forgot Password option on the login screen and follow the instructions to reset your password."
    },
    {
      "question": "Are there any privacy or data security measures in place?",
      "answer":
          "Yes. Your data is securely stored and protected, and it is not shared without your permission except when required by law."
    },
    {
      "question": "Can I customize settings within the application?",
      "answer":
          "Yes. You can customize available settings such as notifications and preferences from within the app."
    },
    {
      "question": "How can I delete my account?",
      "answer":
          "To delete your account, please contact the company via WhatsApp or visit the company office."
    },
    {
      "question": "How do I access my analytics history?",
      "answer":
          "You can view your past trips and driving analytics in the History or Analytics section of the app."
    },
    {
      "question": "Can I use the app offline?",
      "answer":
          "The app has limited offline functionality. An internet connection is required to sync data and access full features."
    },
  ];

  @override
  Widget build(BuildContext context) {
    Color bgColor = widget.isDark ? kNavyBlue : Colors.white;
    Color textColor = widget.isDark ? Colors.white : Colors.black;

    List<Map<String, String>> filteredFaq = faqData
        .where((item) =>
            item['question']!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

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
                            fontWeight: FontWeight.normal, // Smooth look
                            color: textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      _buildToggleButtons(),
                      const SizedBox(height: 20),
                      _buildSearchBar(),
                      const SizedBox(height: 20),
                      ...filteredFaq
                          .map((item) => _buildExpansionTile(item, textColor))
                          .toList(),
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

  Widget _buildToggleButtons() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: kFieldFillColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          _toggleBtn("FAQ", true, () {}),
          _toggleBtn("Contact Us", false, () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ContactUsPage(isDark: widget.isDark)));
          })
        ],
      ),
    );
  }

  Widget _toggleBtn(String title, bool isSelected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: isSelected ? kMainRed : Colors.transparent,
              borderRadius: BorderRadius.circular(12)),
          alignment: Alignment.center,
          child: Text(title,
              style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      onChanged: (v) => setState(() => searchQuery = v),
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: const Icon(Icons.search, color: Colors.black45),
        filled: true,
        fillColor: kFieldFillColor,
        contentPadding: EdgeInsets.zero,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kMainRed)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kMainRed)),
      ),
    );
  }

  Widget _buildExpansionTile(Map<String, String> item, Color textColor) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(item['question']!,
            style: const TextStyle(
                color: kMainRed, fontSize: 14, fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(item['answer']!,
                style:
                    TextStyle(color: textColor.withOpacity(0.7), fontSize: 13)),
          ),
        ],
      ),
    );
  }
}
