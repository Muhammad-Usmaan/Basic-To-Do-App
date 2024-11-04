import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/notes.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> imageUrls = [
    '../assets/images/todo_home1.png',
    '../assets/images/todo_home2.png',
    '../assets/images/todo_home3.png',
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(107, 121, 192, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Container(
                width: 250,
                child: Text(
                  "Manage your daily TO DO",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              CarouselSlider(
                items: imageUrls.map(
                  (i) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(i),
                    );
                  },
                ).toList(),
                options: CarouselOptions(
                  height: 300,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < imageUrls.length; i++)
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 8,
                      width: 25,
                      decoration: BoxDecoration(
                          color: i == currentPage
                              ? Colors.amber
                              : const Color.fromARGB(255, 252, 217, 114),
                          borderRadius: BorderRadius.circular(10)),
                    )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: Text(
                  "Without much worry just manage things as easy as piece of cake",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NotesView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40)),
                child: const Text("Create a Note"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
