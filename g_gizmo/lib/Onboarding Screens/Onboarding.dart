import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  late PageController  _pageController;

  int _pageIndex = 0;

  @override
  void initState(){
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        backgroundColor: const Color(0xFF25364A),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: PageView.builder(
                controller: _pageController,
                itemCount: Board_data.length,
                onPageChanged: (index){
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index, ) =>
                  OnboardContent(
                    image: Board_data[index].image,
                    tittle: Board_data[index].tittle,
                    description: Board_data[index].description,
                  ),),),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(6),),
                 ...List.generate(
                     Board_data.length,
                     (index) => Padding(
                         padding: const EdgeInsets.only(
                             right: 10),
                     child: DotIndicator(isActive: index == _pageIndex,),)
                 ),

                  const SizedBox(height: 10,width: 270,),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                        onPressed: (){
                          _pageController.nextPage(duration: const Duration(milliseconds: 500,),
                              curve: Curves.ease);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.green,
                            side: const BorderSide(style: BorderStyle.solid),
                        ),
                        // Navigator.pushNamed(context, '/welcome');
                        child: const Icon(Icons.arrow_forward,
                        color: Colors.white,) ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends  StatelessWidget {
  const DotIndicator({super.key,
  this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: isActive ? 12 : 4 ,
      width: 4,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(13),)
      ),
    );
  }
}



class Onboard{
  final String image, tittle, description;
  Onboard({
    required this.image,
    required this.tittle,
    required this.description,
});
}

final List<Onboard>Board_data = [
  Onboard(image: 'assets/images/onboard/onboardingbg.png',
      tittle: 'Find The Item you have been looking for',
      description:'Here you will find rich varities of '
          'goods,carefully classified for seamless '
          'shopping experiences',
  ),
  Onboard(image: "assets/images/onboard/onboarding2bg.png",
      tittle: 'Get those shopping \nbags filled',
      description: 'Add any item you want to your cart,'
          ' or save it on your wishlist'
  ),
  Onboard(image: "assets/images/onboard/onboarding3bg.png",
      tittle: 'Package Tracking',
      description: 'In particular, Gizmo can pack your order,'
          ' and help you seamlessly '
  ),
];


class OnboardContent extends StatefulWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.tittle,
    required this.description,

  });

  final String image, tittle, description;

  @override
  State<OnboardContent> createState() => _OnboardContentState();
}

class _OnboardContentState extends State<OnboardContent> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 320),
          child: TextButton(onPressed: (){
            Navigator.pushNamed(context, "/welcome");
          },
              child: const Text('Skip',style: TextStyle(fontSize: 23,color: Colors.green),)),
        ),
        const SizedBox(height: 40,),
        SizedBox(height:300 , width: 400,child: Image.asset(widget.image, height: 270, )),
        const SizedBox(height: 60,),
        Text(widget.tittle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            // color: Colors.white
          ),
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(widget.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              // color: Colors.white
            ),
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}