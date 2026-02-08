import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),

      backgroundColor: Colors.white,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          _searchField(),
          SizedBox(height: 36,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 12,),

              Container(
                height: 150,
                color: Colors.green,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  }
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  AppBar appBar() {
    return AppBar(

      title: Text(
          'Alexandra',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.bold
          )
      ),

      toolbarHeight: 64.0,
      backgroundColor: Colors.white,
      centerTitle: true,

      leading: GestureDetector(
        onTap: () {
          print('Menu');
        },
        child: Container(
          margin: EdgeInsets.all(12),
          child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            print('Search');
          },
          child: Container(
            margin: const EdgeInsets.only(right: 24, top: 8, bottom: 8),
            width: 32,
            height: 32,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/dots.svg',
                width: 8,
                height: 8,
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
      ],
    );
  }

  Container _searchField() {
    return Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),

        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withValues(alpha: 0.06),
                blurRadius: 20,
                spreadRadius: 0.0,
                offset: Offset(0, 8),
              )
            ]
        ),

        child: TextField(
          style: TextStyle(
            color: Colors.black45,
          ),
          decoration: InputDecoration(
            hintText: "Masukin sayang...",
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha:0.6),
              fontSize: 14,
            ),

            filled: true,
            fillColor: Colors.white,

            contentPadding: EdgeInsets.all(15),

            prefixIcon: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      indent: 5,
                      endIndent: 5,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 16, bottom: 8, left: 8),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            ),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
            ),
          ),
        )
    );
  }
}