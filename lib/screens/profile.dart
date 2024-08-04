import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 26,
                  child: Icon(Icons.person, size: 32),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gaurav Malode',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'gauravmalode777@gmail.com',
                      style: TextStyle(
                          color: const Color.fromARGB(153, 221, 215, 215)),
                    ),
                    Row(
                      children: [
                        Icon(Icons.sync,
                            color: Color.fromARGB(255, 92, 243, 97),
                            size: 16),
                        SizedBox(width: 5),
                        Text(
                          'Sync is on',
                          style: TextStyle(
                              color: Color.fromARGB(255, 74, 240, 80)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatColumn('My Rewards', '3'),
                  Container(
                    height: 40, // specify the height
                    child: VerticalDivider(
                      color: Colors.grey, // Color of the line
                      thickness: 1, // Thickness of the line
                    ),
                  ),
                  _buildStatColumn('Daily points', '3/30'),
                  Container(
                    height: 40, // specify the height
                    child: VerticalDivider(
                      color:  Colors.grey,
                      thickness: 1, // Thickness of the line
                    ),
                  ),
                  _buildStatColumn('Daily streak', '2 days'),
                 
                ],
              ),
            ),
            SizedBox(height: 24),
            _buildListTile('Notifications', Icons.notifications, '1'),
            _buildListTile('Mind-Mate Rewards', Icons.card_giftcard),
            _buildListTile('Settings', Icons.settings),
            _buildListTile('Interests', Icons.star),
            _buildListTile('History', Icons.history),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildListTile(String title, IconData icon, [String? notification]) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      trailing: notification != null
          ? CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                notification,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          : null,
    );
  }
}
