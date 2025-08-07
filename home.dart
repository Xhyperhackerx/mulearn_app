import 'package:flutter/material.dart';
import 'login.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        title: const Text("μLearn Dashboard"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("μLearn",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            menuItem(context, Icons.home, "Home", () {}),
            menuItem(context, Icons.person, "Profile", () {
            }),
            menuItem(context, Icons.map, "μJourney", () {}),
            menuItem(context, Icons.groups, "Interest Groups", () {}),
            menuItem(context, Icons.school, "Learning Circle", () {}),
            menuItem(context, Icons.search, "Search", () {}),
            menuItem(context, Icons.emoji_events, "Leaderboard", () {}),
            menuItem(context, Icons.rocket, "Launchpad", () {}),
            menuItem(context, Icons.event, "Special Events", () {}),
            menuItem(context, Icons.book, "Courses", () {}),
            const Spacer(),
            const Divider(),
            menuItem(context, Icons.settings, "Account Setting", () {}),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title:
                  const Text("Logout", style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text("Hello, Adarsh 👋",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF3A5AFE),
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Welcome Adarsh 👋",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const SizedBox(height: 8),
                        const Text(
                            "This dashboard is being updated. Expect improvements and possible bugs. Thanks for your patience!",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                              ),
                              child: const Text("Start Learning"),
                            ),
                            const SizedBox(width: 10),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.white),
                              ),
                              child: const Text("Join Learning"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Learning Circles",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("AI in Cloud computing",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Text("Using of AI in cloud computing"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      tag("Cloud and DevOps", Colors.green),
                      const SizedBox(width: 8),
                      tag("Offline", Colors.orange),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue),
                    child: const Text("View Details"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuItem(
      BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
    );
  }

  Widget tag(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(20)),
      child: Text(label, style: TextStyle(color: color)),
    );
  }
}
