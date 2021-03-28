part of 'forgetImports.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> with ForgetData {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xff00EEFF),
                    Color(0xFF19A3FF),
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                centerLogo(height: 110),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 100,
                  child: Text(
                    'FORGET YOUR PASSWORD',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'agency',
                        fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Form(
                  child: buildTextField(
                    hint: "Email",
                    controller: _emailController,
                    icon: Icons.email,
                    textInputType: TextInputType.text,
                    validate: (val) {
                      if (val.isEmpty ||
                          !val.contains('@') ||
                          val.length < 3 ||
                          !val.contains('.')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    suffix: false,
                  ),
                  key: _formKey,
                ),
                buildButton(
                  onTap: ()=> _submit(context),
                    context: context,
                    child: Text('SEND CODE',style: TextStyle(fontFamily: 'agency',color: Colors.white,fontSize: 25),))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
