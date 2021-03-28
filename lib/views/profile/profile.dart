part of 'profileImports.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    margin: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(Res.sea),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(bottom: 15, top: 15),
                          child: myText(
                              text: 'Seif Abogheda',
                              fontWeight: FontWeight.bold,
                              font: 'Lato',
                              size: 18)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue,
                            size: 20,
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 5, bottom: 5),
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: myText(
                                  text: 'Seif Abogheda',
                                  fontWeight: FontWeight.normal,
                                  font: 'Lato',
                                  size: 15,
                                  color: Colors.grey)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.blue,
                            size: 18,
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 5, top: 5),
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: myText(
                                  text: 'SeifAbogheda89@gmail.com',
                                  fontWeight: FontWeight.normal,
                                  font: 'Lato',
                                  size: 13,
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis,
                                  max: 2)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            //Language
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: myText(
                        text: 'Language',
                        color: Colors.black,
                        font: 'Lato',
                        size: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        myText(
                            text: 'English',
                            color: Colors.grey,
                            font: 'Lato',
                            size: 15,
                            fontWeight: FontWeight.normal),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Divider(
                  color: Colors.blue,
                )),
            //Currency
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: myText(
                        text: 'Currency',
                        color: Colors.black,
                        font: 'Lato',
                        size: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        myText(
                            text: 'USD',
                            color: Colors.grey,
                            font: 'Lato',
                            size: 15,
                            fontWeight: FontWeight.normal),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Divider(
                  color: Colors.blue,
                )),
            //Reminders
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, top: 1),
                    child: myText(
                        text: 'Reminders',
                        color: Colors.black,
                        font: 'Lato',
                        size: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        myText(
                            text: 'English',
                            color: Colors.grey,
                            font: 'Lato',
                            size: 15,
                            fontWeight: FontWeight.normal),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Divider(
                  color: Colors.blue,
                )),
            //Units
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: myText(
                        text: 'Units',
                        color: Colors.black,
                        font: 'Lato',
                        size: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        myText(
                            text: 'English',
                            color: Colors.grey,
                            font: 'Lato',
                            size: 15,
                            fontWeight: FontWeight.normal),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Divider(
                  color: Colors.blue,
                )),
            //Privacy Policy
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: myText(
                        text: 'Privacy Policy',
                        color: Colors.black,
                        font: 'Lato',
                        size: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        myText(
                            text: 'English',
                            color: Colors.grey,
                            font: 'Lato',
                            size: 15,
                            fontWeight: FontWeight.normal),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Divider(
                  color: Colors.blue,
                )),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child:
                  buildButton(
                      width: MediaQuery.of(context).size.width,
                      title: 'Log Out', context: context, onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
