import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;
Column buildGitHubData(Response response) {
  var jsonResponse =
  convert.jsonDecode(response.body) as Map<String, dynamic>;
  var github_bio = jsonResponse['bio'];
  var github_name = jsonResponse['name'];
  var github_email = "ericshih0925@gmail.com";
  var github_location = jsonResponse['location'];
  var github_following = jsonResponse['following'];
  var github_followers = jsonResponse['followers'];
  var github_avatar_url = jsonResponse['avatar_url'];
  var github_public_repos = jsonResponse['public_repos'];
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Container(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: NetworkImage(github_avatar_url),
                // image: NetworkImage('source.unsplash.com/600x600'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            github_name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              github_bio + ' @' + github_location,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF2a2a2a).withOpacity(0.2),
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
            color: Colors.white,
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      github_followers.toString(),
                      style: TextStyle(
                        color: Color(0xff2BE1C8),
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "FOLLOWERS",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      github_following.toString(),
                      style: TextStyle(
                        color: Color(0xff2BE1C8),
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "FOLLOWING",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      github_public_repos.toString(),
                      style: TextStyle(
                        color: Color(0xff2BE1C8),
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "REPOSITORIES",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}