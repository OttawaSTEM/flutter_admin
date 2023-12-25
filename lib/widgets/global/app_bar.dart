import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  final String title;

  const AppBarWidget({
    super.key,
    required this.title,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height * 0.8,
      color: Theme.of(context).colorScheme.primary,
      alignment: Alignment.center,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 10,
          ),
          // CircleAvatar(
          //   radius: preferredSize.height * 0.3,
          //   backgroundColor: Colors.white,
          //   // backgroundImage: NetworkImage('imageUrl'),
          //   child: SvgPicture.asset('assets/images/core/logo.svg'),
          // ),
          IconButton(
            // icon: SvgPicture.asset('assets/images/core/logo.svg'),
            icon: Image.asset('assets/images/core/logo.png'),
            iconSize: 30,
            onPressed: () {},
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const CircleAvatar(
            minRadius: 20,
            maxRadius: 20,
            // backgroundImage: NetworkImage('imageUrl'),
            backgroundImage: AssetImage(
              'assets/images/profile/profile_default.png',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
