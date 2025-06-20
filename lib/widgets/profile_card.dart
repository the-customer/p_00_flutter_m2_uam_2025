import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min, // wrap content
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
            const SizedBox(height: 16),
            const Text(
              "Fatoumata Drame",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Developpeuse Flutter et Formatrice passionnee.\nSpecialisee dans le developpement d'applications mobiles et le design d'interface utilisateur.",textAlign: TextAlign.center,
              ),
              const Divider(height: 32, thickness: 1,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoItem(icon: Icons.email, label: "Email"),
                  InfoItem(icon: Icons.phone, label: "Phone"),
                  InfoItem(icon: Icons.location_city, label: "Address"),
                ],
              ),
              const Divider(height: 24, thickness: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: (){}, 
                    child: const Text("Profile")
                  ),
                  // Expanded(child: SizedBox()),
                  OutlinedButton(
                    onPressed: (){},
                    child: const Text("Contact"),
                  ),
                ],
              )
          ],
        )
      ),
    );
  }
}


class InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const InfoItem({super.key,required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 28, color: Colors.red,),
        SizedBox(height: 4,),
        Text(label, style: TextStyle(fontSize: 12,)),
      ],
    );
  }
}
