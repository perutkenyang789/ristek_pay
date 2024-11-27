import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Profile {
  final String username;
  final String npm;
  final String bio;
  final int balance;

  Profile({
    required this.username,
    required this.npm,
    required this.bio,
    required this.balance,
  });
}

class ProfileCard extends StatelessWidget {
  final Profile profile;

  const ProfileCard(this.profile, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337.0,
      height: 254.0,
      padding: EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 35.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Picture & Username Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              ClipOval(
                child: Image.asset(
                  'assets/images/jack-sparrow.png',
                  height: 76.0,
                  width: 76.0,
                  fit: BoxFit.cover,
                ),
              ),

              // Spacing
              const SizedBox(
                width: 28.0,
              ),

              // Username Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Username
                  Text(
                    profile.username,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  // NPM
                  Text(
                    profile.npm,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Spacing
          const SizedBox(
            height: 16.0,
          ),

          // Bio Heading
          Text(
            'Bio',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),

          // Spacing
          const SizedBox(
            height: 8.0,
          ),

          // Bio
          Text(
            profile.bio,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          ),

          // Spacing
          const SizedBox(
            height: 16.0,
          ),

          // Balance
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Balance Heading
              Text(
                'Saldo',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

              // Spacing
              const SizedBox(
                width: 8.0,
              ),

              // Balance Amount
              Text(
                'Rp ${profile.balance.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#20C000'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
