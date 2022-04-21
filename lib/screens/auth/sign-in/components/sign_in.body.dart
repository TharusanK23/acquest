part of signinview;

class _SignInBody extends ViewModelWidget<SignInViewModel> {
  const _SignInBody({Key? key}) : super(key: key, reactive: true);
  @override
  Widget build(BuildContext context, SignInViewModel model) {
    return SafeArea(
        child: Column(
      children: <Widget>[
        Container(
          height: 119.0,
          padding: const EdgeInsets.symmetric(horizontal: 29.0),
          decoration: const BoxDecoration(color: primary),
          child: Row(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 24.0,
                    color: white,
                  )),
              const SizedBox(
                width: 19.0,
              ),
              const Text(
                'Sign in',
                style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 24.0),
              )
            ],
          ),
        ),
        Flexible(
          child: SizedBox(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                const SizedBox(
                  height: 113.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 42.0,
                      width: 167.0,
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 94.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          'Please sign in with the credentials shared by the company',
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                          style: TextStyle(color: Color(0xFF030303), fontWeight: FontWeight.w300, fontSize: 18.0),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                Container(
                  height: 50.0,
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                        fillColor: dark,
                        hintText: 'User Name',
                        hintStyle: const TextStyle(color: Color(0XFF444444), fontSize: 16.0, fontWeight: FontWeight.w500)),
                  ),
                ),
                const SizedBox(
                  height: 29.0,
                ),
                Container(
                  height: 50.0,
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: TextField(
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.visibility, color: dark,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                        fillColor: dark,
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Color(0XFF444444), fontSize: 16.0, fontWeight: FontWeight.w500)),
                  ),
                ),
                const SizedBox(
                  height: 36.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 37.0),
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          'Forgot password or user name? Click here!',
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                          style: TextStyle(color: Color(0xFF030303), fontWeight: FontWeight.w400, fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 39.0,
                ),
                InkWell(
                  // onTap: () => model.navigateToAuthView(context, true),
                  borderRadius: BorderRadius.circular(5.0),
                  highlightColor: transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [BoxShadow(blurRadius: 10, color: dark.withOpacity(0.2), offset: const Offset(2, 4))],
                        ),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
