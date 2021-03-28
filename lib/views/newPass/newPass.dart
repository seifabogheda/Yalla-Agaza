part of 'newPassImports.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> with NewPasswordData {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
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
                      'New Password',
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
              margin: const EdgeInsets.only(top: 50),

              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Form(
                key: _formKey,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    buildTextField(
                      hint: "Enter Code",
                      controller: _codeController,
                      icon: Icons.arrow_forward_ios_sharp,
                      textInputType: TextInputType.number,
                      validate: (val) {
                        if (val.isEmpty || val.length < 5) {
                          return 'Please enter a valid Code';
                        }
                        return null;
                      },
                      suffix: false,
                    ),
                    buildTextField(
                      hint: "New Password",
                      controller: _newPasswordController,
                      icon: Icons.lock,
                      textInputType: TextInputType.text,
                      validate: (val) {
                        if (val.isEmpty || val.length < 5) {
                          return 'Please enter a Valid Password';
                        }
                        return null;
                      },
                      suffix: false,
                    ),
                    buildButton(
                      width: MediaQuery.of(context).size.width,
                      onTap: () => _submit(context),
                      context: context,
                      child: Text(
                        'DONE',
                        style: TextStyle(
                            fontFamily: 'agency', color: Colors.white, fontSize: 28),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
