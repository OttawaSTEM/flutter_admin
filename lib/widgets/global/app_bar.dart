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
          CircleAvatar(
            radius: preferredSize.height * 0.3,
            backgroundColor: Colors.white,
            // backgroundImage: NetworkImage('imageUrl'),
            child: SvgPicture.asset('assets/images/core/logo.svg'),
          ),
          // IconButton(
          //   icon: SvgPicture.asset('assets/images/core/logo.svg'),
          //   // icon: Image.asset('assets/images/logo.png'),
          //   iconSize: 50,
          //   onPressed: () {},
          // ),
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
          FittedBox(
            fit: BoxFit.scaleDown, // This helps in shrinking the ClipRRect to the size of the Image
            child: SvgPicture.asset(
              'assets/images/profile/profile_default.svg',
              height: preferredSize.height * 0.55,
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(15),
            //   child: Image.asset(
            //     'assets/images/profile/profile_default.png',
            //     width: preferredSize.height * 0.55,
            //     height: preferredSize.height * 0.55,
            //   ),
            // ),
          ),
          // CircleAvatar(
          //   radius: 48,
          //   // backgroundImage: NetworkImage('imageUrl'),
          //   backgroundImage: Image.asset(
          //     'assets/images/profile/profile_default.png',
          //   ),
          // ),
          // Image.asset(
          //   'assets/images/profile/profile_pic.png',
          //   height: 30,
          // ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
