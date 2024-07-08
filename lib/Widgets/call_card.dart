import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';

class CallCard extends StatelessWidget {
  final String callTypeAndTime;
  final String username;
  final String profileImage;
  final bool incomingCall;
  final bool outgoingCall;
  final bool missedCall;
  final bool videoCall;

  const CallCard({
    super.key,
    required this.videoCall,
    required this.callTypeAndTime,
    required this.username,
    required this.profileImage,
    required this.incomingCall,
    required this.outgoingCall,
    required this.missedCall,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Pallete.secondaryTextColor,
        backgroundImage: NetworkImage(
          profileImage,
        ),
        radius: 30.0,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Text(
          username,
          style: const TextStyle(
            color: Pallete.mainTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: missedCall
            ? Row(
                children: [
                  Image.asset(
                    'Assets/Images/missed-call.png',
                    scale: 35,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      callTypeAndTime,
                      style: const TextStyle(
                        color: Pallete.secondaryTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              )
            : outgoingCall
                ? Row(
                    children: [
                      const Icon(
                        Icons.arrow_outward_sharp,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          callTypeAndTime,
                          style: const TextStyle(
                            color: Pallete.secondaryTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Image.asset(
                        'Assets/Images/incoming-call.png',
                        scale: 25,
                        color: Pallete.appbarColor,
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          callTypeAndTime,
                          style: const TextStyle(
                            color: Pallete.secondaryTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ],
                  ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: videoCall
            ? const Icon(
                Icons.videocam_sharp,
                color: Pallete.buttonColor,
                size: 25.0,
              )
            : const Icon(
                Icons.call_rounded,
                color: Pallete.buttonColor,
                size: 25.0,
              ),
      ),
    );
  }
}
