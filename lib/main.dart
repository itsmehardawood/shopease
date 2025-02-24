import 'package:flutter/material.dart';
import 'package:shopease/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Start with Splash Screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to SignUp
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Center(
        child: Image.network(
          'https://picsum.photos/200', // ✅ Fixed direct image URL
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key); // ✅ Added constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7faf7),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 28,
            )),
        backgroundColor: Color(0xFFf7faf7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.grey),
                // Label inside TextField
                filled: true,
                // Enables background color
                fillColor: Colors.white,
                // White background
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: 18), // Padding inside TextField
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.grey),
                // Label inside TextField
                filled: true,
                // Enables background color
                fillColor: Colors.white,
                // White background
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: 18), // Padding inside TextField
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey),
                // Label inside TextField
                filled: true,
                // Enables background color
                fillColor: Colors.white,
                // White background
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: 18), // Padding inside TextField
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0XFFBA3318),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFcf472b)),
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Center(child: Text("Or Sign up with social account")),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle, // Makes it a perfect circle
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://cdn.iconscout.com/icon/free/png-512/free-google-icon-download-in-svg-png-gif-file-formats--logo-social-media-1507807.png?f=webp&w=256', // ✅ Direct Image URL
                    ),
                    onBackgroundImageError: (exception, stackTrace) {
                      print("Error loading image: $exception");
                    },
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.network(
                    'https://cdn.iconscout.com/icon/free/png-512/free-facebook-logo-icon-download-in-svg-png-gif-file-formats--fb-social-media-pack-logos-icons-721950.png?f=webp&w=256', // ✅ Direct Image URL
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, color: Colors.red); // Show error icon
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// login Page

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key); // ✅ Added constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7faf7),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 28,
            )),
        backgroundColor: Color(0xFFf7faf7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),

            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.grey),
                // Label inside TextField
                filled: true,
                // Enables background color
                fillColor: Colors.white,
                // White background
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: 18), // Padding inside TextField
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey),
                // Label inside TextField
                filled: true,
                // Enables background color
                fillColor: Colors.white,
                // White background
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: 18), // Padding inside TextField
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget your Password?",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0XFFBA3318),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0XFFcf472b)),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Center(child: Text("Or Sign up with social account")),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle, // Makes it a perfect circle
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://cdn.iconscout.com/icon/free/png-512/free-google-icon-download-in-svg-png-gif-file-formats--logo-social-media-1507807.png?f=webp&w=256', // ✅ Direct Image URL
                    ),
                    onBackgroundImageError: (exception, stackTrace) {
                      print("Error loading image: $exception");
                    },
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.network(
                    'https://cdn.iconscout.com/icon/free/png-512/free-facebook-logo-icon-download-in-svg-png-gif-file-formats--fb-social-media-pack-logos-icons-721950.png?f=webp&w=256', // ✅ Direct Image URL
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, color: Colors.red); // Show error icon
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


// Forget Screen
class ForgetScreen extends StatelessWidget {
  const ForgetScreen({Key? key}) : super(key: key); // ✅ Added constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7faf7),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 28,
            )),
        backgroundColor: Color(0xFFf7faf7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot Password ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Please Enter a Valid email to forget Password. And you will receive an Email a link to ReCreate your password."),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.cancel_outlined,color: Colors.red,),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.grey),
                // Label inside TextField
                filled: true,
                // Enables background color
                fillColor: Colors.white,
                // White background
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners// No border
                ),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: 18), // Padding inside TextField
              ),
            ),
            SizedBox(height: 80,),



            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFcf472b)),
              child: Center(
                child: Text(
                  "Send",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


