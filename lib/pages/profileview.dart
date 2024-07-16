import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileView extends StatelessWidget {
  const ProfileView(
      {super.key,
      required this.image,
      required this.name,
      required this.phoneNumber,
      required this.email});
  final dynamic image;
  final String name;
  final String phoneNumber;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile view"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left:20,right: 20),
          child: Column(children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                  child: Image.network(image)),
            ),
            const SizedBox(height: 20),
            Text(name, style: Theme.of(context).textTheme.headlineSmall),
            Text(email, style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 200,
                    height:70,
                    child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
              side:const BorderSide(color: Colors.transparent),
              
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(10),
              )),
                      onPressed: () async {
                     
                      },
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Iconsax.call),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Call",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: SizedBox(
                     width: 200,
                    height:70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
              side:const BorderSide(color: Colors.transparent),
              
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(10),
              )),
                      onPressed: () {},
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Iconsax.message),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Message",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  
                  child: SizedBox(
                     width: 200,
                    height:70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
              side:const BorderSide(color: Colors.transparent),
              
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(10),
              )),
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Iconsax.archive),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Mail",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
