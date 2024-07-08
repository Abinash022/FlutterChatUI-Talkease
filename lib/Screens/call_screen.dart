import 'package:flutter/material.dart';
import 'package:talk_ease/Data/call_data.dart';
import 'package:talk_ease/Widgets/call_card.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final call = callData[index];
                return CallCard(
                  videoCall: call.videoCall,
                  callTypeAndTime: call.callTypeAndTime,
                  username: call.username,
                  profileImage: call.profileImage,
                  incomingCall: call.incomingCall,
                  outgoingCall: call.outgoingCall,
                  missedCall: call.missedCall,
                );
              },
              itemCount: callData.length,
            ),
          ],
        ),
      ),
    );
  }
}
