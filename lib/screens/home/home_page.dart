import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

import '../../config/colors.dart';
import '../../config/styles.dart';
import '../../generated/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _searchController = TextEditingController();

  int selected = 0;

  final List<Map<String, dynamic>> _listProduit = [
    {
      "title" : "Modern light clothes",
      "category" : "All Items",
      "prix" : "5 000 XAF",
      "etoile" : "4.6",
      "isFavorite" : false,
      "image" : Assets.imageImageProduit
    },
    {
      "title" : "Modern light clothes",
      "category" : "All Items",
      "prix" : "15 000 XAF",
      "etoile" : "4.9",
      "isFavorite" : true,
      "image" : Assets.imageImageProduit2
    },
    {
      "title" : "Modern light clothes",
      "category" : "All Items",
      "prix" : "7 000 XAF",
      "etoile" : "4.4",
      "isFavorite" : true,
      "image" : Assets.imageImageProduit3
    },
    {
      "title" : "Modern light clothes",
      "category" : "All Items",
      "prix" : "3 000 XAF",
      "etoile" : "4.1",
      "isFavorite" : false,
      "image" : Assets.imageImageProduit4
    },

  ];

  final List<Map<String, dynamic>> _listCategory = [
    {
      "title" : "All Items",
      "icon" : Assets.svgCategory
    },
    {
      "title" : "Haut Mixte",
      "icon" : Assets.iconsHaut
    },
    {
      "title" : "Chapeau Mixte",
      "icon" : Assets.iconsChapeau
    },
    {
      "title" : "Haut/Bas Homme",
      "icon" : Assets.iconsHautPantalon
    },
    {
      "title" : "Pantalon Mixte",
      "icon" : Assets.iconsPantalon
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
        child: Column(
          children: [

            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        FittedBox(child: Text("Hello, Welcome 👋", style: AppStyles.smallTitle,)),
                        Container(
                          height: 5,
                        ),
                        FittedBox(child: Text("Albert Stevano", style: AppStyles.mediumTitle,)),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(Assets.imagesProfilePic),
                      radius: 23,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: Column(
                children: [
                  Container(
                    height: 10,
                  ),
                  searchWidget(),

                  Container(
                    height: 25,
                  ),

                  categoryWidget(),
                  Container(
                    height: 25,
                  ),

                  Expanded(
                    child: GridView.builder(
                      itemCount: _listProduit.length,
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      // primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          SizedBox(
                            height: 310,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                                      child: Container(width: double.infinity, child: Image.asset(_listProduit[index]["image"], fit: BoxFit.cover,)),
                                    )

                                ),
                                Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 7,
                                            ),
                                            Text(_listProduit[index]["title"],
                                              style: AppStyles.mediumTitleProduit,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,),
                                          ],
                                        ),

                                         Text(_listProduit[index]["category"], style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'EncodeSans',
                                          fontWeight: FontWeight.w200,
                                          color: AppColors.coloredTitle,
                                        ),),


                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(_listProduit[index]["prix"],
                                              style: AppStyles.mediumTitleProduit,),

                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                const Icon(IconlyBold.star, color: Colors.yellow, size: 19,),
                                                Container(
                                                  width: 5,
                                                ),
                                                Text(_listProduit[index]["etoile"],
                                                  style: const TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: 'EncodeSans',
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.coloredTitle,
                                                  ),),
                                              ],
                                            )
                                          ],
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                            top: 13,
                            right: 12,
                            child: Container(
                              height: 26,
                              width: 26,
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary
                              ),
                              child:  Center(child: Icon(_listProduit[index]["isFavorite"] ? IconlyBold.heart : IconlyLight.heart, size: 16, color: AppColors.white,)),
                            ),
                          )
                        ],
                      ),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.6,
                        mainAxisSpacing: 19,
                        crossAxisSpacing: 19
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget searchWidget ()
  {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 11,
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: AppColors.borderColor,
                      width: 1
                  )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Expanded(
                  //     child: const Icon(IconlyLight.search, color: AppColors.gray,),
                  // flex: 2,),
                  //
                  // Container(
                  //   width: 8,
                  // ),
                  Expanded(
                    flex: 9,
                    child: TextFormField(
                      controller: _searchController,

                      decoration: const InputDecoration(
                        hintText: 'Search clothes. . . ',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 7),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 23),
                          child: Icon(IconlyLight.search, color: AppColors.gray,),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.primary
              ),
              child: const Icon(IconlyLight.filter, color: AppColors.white,),
            ),
          )
        ],
      ),
    );
  }

  Widget categoryWidget (){
    return SizedBox(
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _listCategory.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selected == index
                          ? AppColors.primary
                          : Colors.white,
                      border: Border.all(
                          color: selected == index
                              ? Colors.transparent
                              :  AppColors.borderColor,
                          width: 1
                      )
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      index == 0 ? SvgPicture.asset(
                        _listCategory[index]["icon"],
                        color: selected == index
                            ? Colors.white
                            : AppColors.coloredTitle,height: 30, width: 20,
                      ) : Image.asset(
                        _listCategory[index]["icon"],
                        color: selected == index
                            ? Colors.white
                            : AppColors.coloredTitle,height: 30, width: 20,
                      ) ,
                      Container(
                        width: 5,
                      ),
                      Text(
                        _listCategory[index]["title"],
                        style: TextStyle(
                          color: selected == index
                              ? Colors.white
                              : AppColors.coloredTitle,
                          fontSize: 12,
                          fontFamily: "EncodeSans",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          );
        },
      ),
    );
  }
}
