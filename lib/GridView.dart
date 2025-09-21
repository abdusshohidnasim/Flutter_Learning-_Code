import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Hoamepage());
  }
}

class Hoamepage extends StatelessWidget {
  Mysnackbar(Massage, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(Massage)));
  }

  var item = [
    {
      "image":
      "https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwFJ0TwH&_nc_oc=Adk78fgFqPkWh4yMTWywM0IwLlvbYdXjzlfBzmJU550SaJsdz3n6rEyYOn4r7tvtYoM&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=VS86ImdbdpSRjHZquQMwlw&oh=00_AfbmTIrhLfTzrB6L9LNlsACeJXW8VJ8XJtXoBsbGvUlSJQ&oe=68D19531",
      "titel": "Naiem",
    },
    {
      "image":
      "https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwFJ0TwH&_nc_oc=Adk78fgFqPkWh4yMTWywM0IwLlvbYdXjzlfBzmJU550SaJsdz3n6rEyYOn4r7tvtYoM&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=VS86ImdbdpSRjHZquQMwlw&oh=00_AfbmTIrhLfTzrB6L9LNlsACeJXW8VJ8XJtXoBsbGvUlSJQ&oe=68D19531",
      "titel": "Naiem1",
    },
    {
      "image":
      "https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwFJ0TwH&_nc_oc=Adk78fgFqPkWh4yMTWywM0IwLlvbYdXjzlfBzmJU550SaJsdz3n6rEyYOn4r7tvtYoM&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=VS86ImdbdpSRjHZquQMwlw&oh=00_AfbmTIrhLfTzrB6L9LNlsACeJXW8VJ8XJtXoBsbGvUlSJQ&oe=68D19531",
      "titel": "Naiem2",
    },
    {
      "image":
      "https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwFJ0TwH&_nc_oc=Adk78fgFqPkWh4yMTWywM0IwLlvbYdXjzlfBzmJU550SaJsdz3n6rEyYOn4r7tvtYoM&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=VS86ImdbdpSRjHZquQMwlw&oh=00_AfbmTIrhLfTzrB6L9LNlsACeJXW8VJ8XJtXoBsbGvUlSJQ&oe=68D19531",
      "titel": "Naiem3",
    },
    {
      "image":
      "https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwFJ0TwH&_nc_oc=Adk78fgFqPkWh4yMTWywM0IwLlvbYdXjzlfBzmJU550SaJsdz3n6rEyYOn4r7tvtYoM&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=VS86ImdbdpSRjHZquQMwlw&oh=00_AfbmTIrhLfTzrB6L9LNlsACeJXW8VJ8XJtXoBsbGvUlSJQ&oe=68D19531",
      "titel": "Naiem4",
    },
    {
      "image":
      "https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwFJ0TwH&_nc_oc=Adk78fgFqPkWh4yMTWywM0IwLlvbYdXjzlfBzmJU550SaJsdz3n6rEyYOn4r7tvtYoM&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=VS86ImdbdpSRjHZquQMwlw&oh=00_AfbmTIrhLfTzrB6L9LNlsACeJXW8VJ8XJtXoBsbGvUlSJQ&oe=68D19531",
      "titel": "Naiem5",
    },
    {
      "image":
      "https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwFJ0TwH&_nc_oc=Adk78fgFqPkWh4yMTWywM0IwLlvbYdXjzlfBzmJU550SaJsdz3n6rEyYOn4r7tvtYoM&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=VS86ImdbdpSRjHZquQMwlw&oh=00_AfbmTIrhLfTzrB6L9LNlsACeJXW8VJ8XJtXoBsbGvUlSJQ&oe=68D19531",
      "titel": "Naiem6",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index){

         return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: Image.network(item[index]["image"]!, fit: BoxFit.fill),
            ),
          );

        },
      ),
    );
  }
}
