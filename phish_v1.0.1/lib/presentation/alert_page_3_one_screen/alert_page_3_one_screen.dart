import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:phish/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:phish/presentation/alert_page_3_two_two_screen/alert_page_3_two_two_screen2.dart';
import 'package:phish/presentation/alert_page_3_two_three_screen/alert_page_3_two_three_screen2.dart';
import 'package:phish/presentation/voice_records_libraries_screen/voice_records_libraries_screen.dart';
import 'package:phish/presentation/alert_page_3_two_screen/alert_page_3_two_screen2.dart';



class Recording {
  final String title;
  final String duration;
  final String date;
  final String audioUrl;

  Recording({
    required this.title,
    required this.duration,
    required this.date,
    required this.audioUrl,
  });
}

class AlertPage3OneScreen extends StatelessWidget {
   AlertPage3OneScreen({Key? key}) : super(key: key);

  final List<Recording> recordings = [
    Recording(
      title: 'Voice 003',
      duration: '00:02:57',
      date: 'Feb 10',
      audioUrl: 'https://solchallbucket.s3.ap-southeast-2.amazonaws.com/example2.wav',
    ),

    Recording(
      title: 'Voice 002',
      duration: '00:02:40',
      date: 'Feb 14',
      audioUrl: 'https://solchallbucket.s3.ap-southeast-2.amazonaws.com/example1.wav',
    ),

    Recording(
      title: 'Voice 001',
      duration: '00:03:53',
      date: 'Feb 19',
      audioUrl: 'https://solchallbucket.s3.ap-southeast-2.amazonaws.com/example3.wav',
    ),

  ];

   final AudioPlayer player = AudioPlayer();
   int? playingIndex; // 현재 재생 중인 오디오 인덱스

   void _toggleAudio(String url, int index) async {
     if (playingIndex != index) {
       // 다른 오디오 재생
       await player.setUrl(url);
       player.play();
       playingIndex = index;
     } else {
       // 같은 오디오 일시정지/재생
       if (player.playing) {
         player.pause();
       } else {
         player.play();
       }
     }
   }

   Future<void> _onRecordTap(BuildContext context, Recording recording) async {
     // 로딩 페이지로 이동
     showDialog(
       context: context,
       barrierDismissible: false,
       builder: (context) => VoiceRecordsLibrariesScreen(), // 로딩 화면
     );

     try {
       final response = await http.post(
         Uri.parse('http://34.64.121.27:5000/process_audio_s3'),
         headers: <String, String>{
           'Content-Type': 'application/json; charset=UTF-8',
         },
         body: jsonEncode(<String, String>{
           'audio_url': recording.audioUrl,
           'recording_title': recording.title,
           'recording_duration': recording.duration,
           'recording_date': recording.date,
         }),
       );

       if (response.statusCode == 200) {
         // 로딩 화면 닫기
         Navigator.pop(context);

         final analysis = jsonDecode(response.body)['analysis'] as Map<String, dynamic>;
         int totalDetected = 0;
         analysis.forEach((key, value) {
           final intValue = value as int;
           totalDetected += intValue;
         });

         String? maxKey;
         int maxValue = 0;
         analysis.forEach((key, value) {
           final intValue = value as int;
           if (intValue > maxValue) {
             maxValue = intValue;
             maxKey = key;
           }
         });

         // maxKey에 따라 적절한 페이지로 이동
         if (maxKey == '2' || maxKey == '1') {
           await Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) => AlertPage3TwoTwoScreen2(
                 detectedKeywords: totalDetected,
                 recordingTitle: recording.title,
                 recordingDuration: recording.duration,
                 recordingDate: recording.date,
               ),
             ),
           );
         } else if (maxKey == '3') {
           await Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) => AlertPage3TwoScreen2(
                 detectedKeywords: totalDetected,
                 recordingTitle: recording.title,
                 recordingDuration: recording.duration,
                 recordingDate: recording.date,
               ),
             ),
           );
         }
       } else {
         Navigator.pop(context); // 로딩 화면 닫기
         _showErrorDialog(context, "Failed to send audio to server.");
       }
     } catch (e) {
       Navigator.pop(context); // 로딩 화면 닫기
       _showErrorDialog(context, "An error occurred: $e");
     }
   }


   void _showErrorDialog(BuildContext context, String message) {
     showDialog(
       context: context,
       builder: (context) => AlertDialog(
         title: Text('Error'),
         content: Text(message),
         actions: <Widget>[
           TextButton(
             child: Text('OK'),
             onPressed: () {
               Navigator.of(context).pop(); // 에러 다이얼로그 닫기
             },
           ),
         ],
       ),
     );
   }


   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('All'),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // 기능 추가
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: recordings.length,
          itemBuilder: (context, index) {
            final recording = recordings[index];
            return Container(
              height: 100,
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                leading: IconButton(
                  icon: Icon(
                    playingIndex == index && player.playing
                        ? Icons.pause_circle_filled
                        : Icons.play_circle_fill,
                    size: 40,
                  ),
                  onPressed: () => _toggleAudio(recording.audioUrl, index),
                ),
                title: Text(recording.title, style: TextStyle(fontSize: 18)),
                subtitle: Text(recording.duration, style: TextStyle(fontSize: 16)),
                trailing: Text(recording.date, style: TextStyle(fontSize: 16)),
                onTap: () => _onRecordTap(context, recording),
              ),
            );
          },
        ),
      ),
    );
  }
}
