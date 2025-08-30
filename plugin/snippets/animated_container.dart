class $1 extends StatefulWidget {
  const $1({ Key? key }) : super(key: key);
  @override
  State<$1> createState() => _$1State();
}

class _$1State extends State<$1> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ${0:const Placeholder()};
  }
}
