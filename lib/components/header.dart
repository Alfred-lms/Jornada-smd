import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Spacer(
            flex: 2,
          ),
          Text(
            "JORNADA SMD!",
            style: Theme.of(context).textTheme.headline6,
          ),
          Spacer(
            flex: 2,
          ),
          SearchField(),
          FilterButton()
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list_rounded),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: TextField(
        decoration: InputDecoration(
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(defaultPadding * 1),
              margin: EdgeInsets.symmetric(
                horizontal: (defaultPadding / 5),
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: SvgPicture.asset("assets/icons/search.svg"),
            ),
          ),
        ),
      ),
    );
  }
}
