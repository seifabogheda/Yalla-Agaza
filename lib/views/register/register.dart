part of 'registerImports.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with RegisterData {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          centerLogo(height: 150),
          Form(
            key: _formKey,
            child: Column(
              children: [
                buildTextField(
                    textInputType: TextInputType.text,
                    hint: 'Your Name',
                    suffix: false,
                    controller: _nameController,
                    icon: Icons.person,
                    validate: (val) {
                      if (val.isEmpty || val.length < 3) {
                        return 'Please enter a true name';
                      }
                      return null;
                    }),
                buildTextField(
                    textInputType: TextInputType.number,
                    hint: 'Phone Number',
                    suffix: false,
                    controller: _phoneController,
                    icon: Icons.phone_in_talk_sharp,
                    validate: (val) {
                      if (val.isEmpty || val.length < 11) {
                        return 'Please enter a true phone number';
                      }
                      return null;
                    }),
                buildTextField(
                    textInputType: TextInputType.text,
                    hint: 'Email',
                    suffix: false,
                    controller: _emailController,
                    icon: Icons.email,
                    validate: (val) {
                      if (val.isEmpty ||
                          !val.contains('@') ||
                          val.length < 3 ||
                          !val.contains('.')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    }),
                buildTextField(
                    textInputType: TextInputType.text,
                    hint: 'Password',
                    suffix: true,
                    isPassword: _isHiddenPass,
                    password: _isHiddenPass,
                    onTab: () => _togglePasswordView(),
                    controller: _passwordController,
                    icon: Icons.lock,
                    validate: (val) {
                      if (val.isEmpty || val.length < 5) {
                        return 'Please enter a Valid Password';
                      }
                      return null;
                    }),
                buildTextField(
                    textInputType: TextInputType.text,
                    hint: 'Confirm Password',
                    suffix: true,
                    isPassword: _isHiddenPass,
                    password: _isHiddenPass,
                    onTab: () => _togglePasswordView2(),
                    controller: _passwordConfirmedController,
                    icon: Icons.lock,
                    validate: (val) => validatePasswordConfirm(confirm: _passwordConfirmedController.text, pass: _passwordController.text)
                ),
                buildButton(
                    width: MediaQuery.of(context).size.width,
                    context: context,
                    onTap: () => _submit(context),
                    title: 'CONTINUE'),
                buildButton(
                  width: MediaQuery.of(context).size.width,
                  context: context,
                  onTap: () => print('Facebook'),
                  child: Image.asset(
                    'assets/photos/facebook.png',
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                buildButton(
                  width: MediaQuery.of(context).size.width,
                  context: context,
                  onTap: () => print('Google'),
                  child: Image.asset(
                    'assets/photos/google.png',
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Login()));
                      },
                      child: Text(
                        'Already Have Account ?',
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHiddenPass = !_isHiddenPass;
    });
  }

  void _togglePasswordView2() {
    setState(() {
      _isHiddenPass2 = !_isHiddenPass2;
    });
  }
}
