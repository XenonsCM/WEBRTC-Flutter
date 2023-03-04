import 'dart:convert';
import 'package:http/http.dart' as http;

String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlrZXkiOiIwOGJmZTAwYS01OWFkLTQ0NDAtYTMxNC03N2YzNTZmYjM3MTYiLCJwZXJtaXNzaW9ucyI6WyJhbGxvd19qb2luIl0sImlhdCI6MTY3Nzk0MzgwMywiZXhwIjoxNzA5NDc5ODAzfQ.nnnUzM8hVwLL1b5zjyxp8B2BiF3Gd28V8A1rzfgvGwo";

Future<String> createMeeting() async {
  final http.Response httpResponse = await http.post(
    Uri.parse("https://api.videosdk.live/v2/rooms"),
    headers: {'Authorization': token},
  );
  print("volkan");
  return json.decode(httpResponse.body)['roomId'];
}