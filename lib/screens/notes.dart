import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  // Field controllers
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

// Radio Variable
  int selectedRadio = 0;
// High priority radio
  Widget customHighRadio(String priority, int index, Function setState) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selectedRadio = index;
        });
      },
      style: OutlinedButton.styleFrom(
          backgroundColor: (selectedRadio == index)
              ? Colors.red
              : const Color.fromARGB(255, 223, 119, 112)),
      child: Text(
        priority,
        style: TextStyle(
            color: (selectedRadio == index) ? Colors.white : Colors.black),
      ),
    );
  }

  // Medium priority radio
  Widget customMedRadio(String priority, int index, Function setState) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selectedRadio = index;
        });
      },
      style: OutlinedButton.styleFrom(
          backgroundColor: (selectedRadio == index)
              ? Colors.amber
              : const Color.fromARGB(255, 247, 232, 100)),
      child: Text(
        priority,
        style: TextStyle(
            color: (selectedRadio == index) ? Colors.white : Colors.black),
      ),
    );
  }

  // Low priority radio
  Widget customLowRadio(String priority, int index, Function setState) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selectedRadio = index;
        });
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: (selectedRadio == index)
            ? const Color.fromARGB(255, 21, 226, 28)
            : const Color.fromARGB(255, 137, 216, 139),
      ),
      child: Text(
        priority,
        style: TextStyle(
            color: (selectedRadio == index) ? Colors.white : Colors.black),
      ),
    );
  }

  List<Map<String, dynamic>> taskTiles = [
    {
      'title': 'Complete Assignment #2',
      'date': '13 September 2024',
      'isDone': false,
      'priority': 1
    },
    {
      'title': 'Submit fee Challan',
      'date': '18 september 2024',
      'isDone': true,
      'priority': 3
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(107, 121, 192, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome to Notes',
                          style: GoogleFonts.aBeeZee(
                              fontSize: 23, fontWeight: FontWeight.bold)),
                      Text(
                        'Have a great Day',
                        style: GoogleFonts.actor(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/447644743_422203557381340_7838387710413355558_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFqIsa9V1Sgjjjz_eBkpiYQdGl3i6f8VP90aXeLp_xU_9OI4q3Xj7WdIEYx26LQvFP6whgjZLo7_givhjGH0tP1&_nc_ohc=S8_egvo-N_8Q7kNvgEQ7g_i&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=AqoSg5Y1KLnHBQW0IdNzJnS&oh=00_AYDE4OWq6xKDBQpGIdzeoC8xjafnaoNtotQmoKdHi6ewOQ&oe=6726E8E5"),
                    radius: 25,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "My Priority Task",
              style:
                  GoogleFonts.actor(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 180,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "2 hours ago",
                              style: GoogleFonts.actor(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              Icons.phone_iphone_outlined,
                              color: Colors.white60,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mobile App UI Design",
                          style: GoogleFonts.actor(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "using figma and other tools",
                          style: GoogleFonts.actor(
                              color: Colors.white60,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 180,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "4 hours ago",
                              style: GoogleFonts.actor(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white60,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Capture sun Rise Shots",
                          style: GoogleFonts.actor(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "complete GuruShot Challenge",
                          style: GoogleFonts.actor(
                              color: Colors.white60,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Tasks",
                    style: GoogleFonts.actor(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog.fullscreen(
                              backgroundColor:
                                  const Color.fromRGBO(107, 121, 192, 1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 15, 20, 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 60,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: const Icon(Icons
                                                      .arrow_back_ios_new_rounded)),
                                              Text(
                                                'Create new Task',
                                                style: GoogleFonts.aBeeZee(
                                                    fontSize: 23,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/447644743_422203557381340_7838387710413355558_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFqIsa9V1Sgjjjz_eBkpiYQdGl3i6f8VP90aXeLp_xU_9OI4q3Xj7WdIEYx26LQvFP6whgjZLo7_givhjGH0tP1&_nc_ohc=S8_egvo-N_8Q7kNvgEQ7g_i&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=AqoSg5Y1KLnHBQW0IdNzJnS&oh=00_AYDE4OWq6xKDBQpGIdzeoC8xjafnaoNtotQmoKdHi6ewOQ&oe=6726E8E5"),
                                                radius: 25,
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Text("From"),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    showTimePicker(
                                                        context: context,
                                                        initialTime:
                                                            TimeOfDay.now());
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 30,
                                                          vertical: 10)),
                                                  child: Text(TimeOfDay.now()
                                                      .format(context)),
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Text("To"),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    showTimePicker(
                                                        context: context,
                                                        initialTime:
                                                            TimeOfDay.now());
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 30,
                                                          vertical: 10)),
                                                  child: Text(TimeOfDay.now()
                                                      .format(context)),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Title",
                                          style: GoogleFonts.actor(
                                            fontSize: 20,
                                          ),
                                        ),
                                        TextField(
                                          controller: _titleController,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Discription",
                                          style: GoogleFonts.actor(
                                            fontSize: 20,
                                          ),
                                        ),
                                        TextField(
                                          controller: _descriptionController,
                                          decoration: const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 30,
                                                      horizontal: 10),
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Choose Priority",
                                          style: GoogleFonts.actor(
                                            fontSize: 20,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            customHighRadio(
                                                'High', 1, setState),
                                            customMedRadio(
                                                'Medium', 2, setState),
                                            customLowRadio('Low', 3, setState),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                taskTiles.add(
                                                  {
                                                    'title':
                                                        _titleController.text,
                                                    'date': DateFormat(
                                                            'dd MMMM yyyy')
                                                        .format(DateTime.now()),
                                                    'isDone': false,
                                                    'priority': selectedRadio
                                                  },
                                                );
                                                setState(() {});
                                                Navigator.pop(context);

                                                _titleController.clear();
                                                _descriptionController.clear();
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 70, 184, 74),
                                                foregroundColor: Colors.white,
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    vertical:
                                                        20), // Adjust height
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              child: const Text(
                                                "Add",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.add_circle_outlined,
                        color: Color.fromARGB(255, 63, 202, 68),
                        size: 30,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Tasks",
                    style: GoogleFonts.actor(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Weekly Tasks",
                    style: GoogleFonts.actor(fontSize: 15),
                  ),
                  Text(
                    "Monthly Tasks",
                    style: GoogleFonts.actor(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: taskTiles.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(
                        vertical: 4.0,
                      ),
                      child: ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Rounded corners on ListTile
                        ),
                        title: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              taskTiles[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: taskTiles[index]['isDone']
                                      ? Colors.green[800]
                                      : Colors.blue[900]),
                              child: Center(
                                child: Text(
                                  taskTiles[index]['isDone'] ? 'Done' : 'To Do',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                        subtitle: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Text(
                              taskTiles[index]['date'],
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 14),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.flag_rounded,
                                color: taskTiles[index]['priority'] == 1
                                    ? Colors.red
                                    : taskTiles[index]['priority'] == 2
                                        ? Colors.amber
                                        : Colors.green),
                          ],
                        ),
                        trailing: const Icon(Icons.more_vert),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
