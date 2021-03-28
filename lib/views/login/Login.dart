part of 'LoginImports.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with LoginData {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          centerLogo(height: 150),
          screenSize.width <380 ?
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 4))
            ]),
            child: Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
               // crossAxisAlignment: CrossAxisAlignment.end  ,
                children: [
                  _buildTextField(
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
                  _buildTextField(
                    hint: 'Password',
                    controller: _passwordController,
                    icon: Icons.lock,
                    isPassword: _isHiddenPass,
                    suffix: true,
                    textInputType: TextInputType.text,
                    validate: (val) {
                      if (val.isEmpty || val.length < 5) {
                        return 'Please enter a Valid Password';
                      }
                      return null;
                    },
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                    child: InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ForgetPassword())),
                      child: Text(
                        'Forget Password ?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                 // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: _buildButton(
                      title: "Login",
                      onTap: () => _submit(context),
                    ),
                  ),
                  InkWell(
                    onTap: ()=> ExtendedNavigator.root.push(Routes.register),
                    child: Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ):
          Container(
            height: MediaQuery.of(context).size.height * 0.38,
            margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 4))
            ]),
            child: Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                // crossAxisAlignment: CrossAxisAlignment.end  ,
                children: [
                  _buildTextField(
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
                  _buildTextField(
                    hint: 'Password',
                    controller: _passwordController,
                    icon: Icons.lock,
                    isPassword: _isHiddenPass,
                    suffix: true,
                    textInputType: TextInputType.text,
                    validate: (val) {
                      if (val.isEmpty || val.length < 5) {
                        return 'Please enter a Valid Password';
                      }
                      return null;
                    },
                  ),
                  Container(
                    margin:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                    child: InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ForgetPassword())),
                      child: Text(
                        'Forget Password ?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: _buildButton(
                      title: "Login",
                      onTap: () => _submit(context),
                    ),
                  ),
                  InkWell(
                    onTap: ()=> ExtendedNavigator.root.push(Routes.register),
                    child: Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        margin: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          children: [
            buildButton(
              width: MediaQuery.of(context).size.width,
              context: context,
              onTap: () => print('Facebook'),
              child: Image.asset(
                Res.facebook,
                height: 30,
                color: Colors.white,
              ),
            ),

            buildButton(
              width: MediaQuery.of(context).size.width,
              context: context,
              onTap: () => print('Google'),
              child: Image.asset(
                Res.google,
                height: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton({Function onTap, Widget child, String title}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        alignment: Alignment.center,
        child: child ??
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
      ),
    );
  }

  Widget _buildTextField(
      {String hint,
      TextEditingController controller,
      IconData icon,
      bool suffix,
      TextInputType textInputType,
      Function validate,
      bool isPassword}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: TextFormField(
        validator: validate,
        keyboardType: textInputType,
        controller: controller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, size: 25),
          hintText: hint,
          suffixIcon: suffix == true
              ? Visibility(
                  visible: _isHiddenPass,
                  child: InkWell(
                      onTap: () => _togglePasswordView(),
                      child: Icon(Icons.visibility_off)),
                  replacement: InkWell(
                      onTap: () => _togglePasswordView(),
                      child: Icon(Icons.visibility)),
                )
              : Container(
                  width: 1,
                ),
        ),
        obscureText: isPassword ?? false,
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHiddenPass = !_isHiddenPass;
    });
  }
}
