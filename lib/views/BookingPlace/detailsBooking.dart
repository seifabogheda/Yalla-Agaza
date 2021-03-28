part of 'bookingPlaceImports.dart';


class DetailsBooking extends StatefulWidget {
  @override
  _DetailsBookingState createState() => _DetailsBookingState();
}

class _DetailsBookingState extends State<DetailsBooking>with BookingPlaceData {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            shape: BoxShape.rectangle,
            boxShadow: [BoxShadow(offset: Offset(0,1),color: Colors.black,blurRadius: 15)]
        ),
        height: MediaQuery.of(context).size.height*.22,
        width: MediaQuery.of(context).size.width*.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //----Date------
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: myText(
                    text: 'Date',
                    size: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    font: 'Lato'
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
              ),
            ),
            //------Time------
            Row(
              children: [
                Container(
                  child: myText(
                      text: '23 January 2021',
                      size: 12,
                      color: Colors.grey,
                      font: 'Lato'
                  ),
                  margin: EdgeInsets.only(left: 20),
                ),
                Container(
                  child: myText(
                      text: '25 January 2021',
                      size: 12,
                      color: Colors.grey,
                      font: 'Lato'
                  ),
                  margin: EdgeInsets.only(left: 20),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            //------Guests-----
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: myText(
                    text: 'Guests',
                    size: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    font: 'Lato'
                ),
                margin: const EdgeInsets.only(left: 15,top: 15),
              ),
            ),
            //------Guests Details-----
            Row(
              children: [
                Form(
                  key: _formKey,
                  child: Container(
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: myText(
                                text: 'Adults',
                                size: 12,
                                color: Colors.grey,
                                font: 'Lato'
                            ),
                            margin: const EdgeInsets.only(left: 15,top: 0),
                          ),
                        ),
                          Container(
                          margin: EdgeInsets.only(top: 5,left: 15),
                          height: 40,
                          width: 55,
                          child: TextFormField(
                            controller: _adultsController,
                            validator: (val){
                              if(val.isEmpty){
                                return 'Enter number of adults please ';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.all(
                                  const Radius.circular(10),),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10),
                                  )),
                              hintText: '3',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: myText(
                                text: 'Children',
                                size: 12,
                                color: Colors.grey,
                                font: 'Lato'
                            ),
                            margin: const EdgeInsets.only(left: 15,top: 0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5,left: 15),
                          height: 40,
                          width: 55,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            validator: (val){
                              if(val.isEmpty){
                                return 'Enter number of children please';
                              }
                              return null;
                            },
                            controller: _childrenController,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.all(
                                  const Radius.circular(10),),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10),
                                  )),
                              hintText: '3',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
