import 'package:contoh_website_flutter/views/widgets/call_to_action/call_to_action.dart';
import 'package:contoh_website_flutter/views/widgets/centered_view/centered_view.dart';
import 'package:contoh_website_flutter/views/widgets/course_details/course_details.dart';
import 'package:contoh_website_flutter/views/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(Column(
          children: [
            const Navbar(),
            Expanded(
                child: Row(
              children: const [
                CourseDetails(),
                Expanded(
                    child: Center(
                  child: CallToAction('Join Our Class'),
                ))
              ],
            ))
          ],
        )));
  }
}
