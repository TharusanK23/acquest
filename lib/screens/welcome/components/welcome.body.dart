part of welcomeview;

class _WelcomeBody extends ViewModelWidget<WelcomeViewModel> {
  const _WelcomeBody({Key? key}) : super(key: key, reactive: true);
  @override
  Widget build(BuildContext context, WelcomeViewModel model) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 95.0,
                width: 323.0,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
              ),
            ],
          ),
          SizedBox(
            height: 150.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () => model.navigateToAuthView(context, false),
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
                          'Sign up',
                          style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => model.navigateToAuthView(context, true),
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
          )
        ],
      ),
    );
  }
}
