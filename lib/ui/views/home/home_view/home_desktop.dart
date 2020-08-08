part of home_view;

class _HomeDesktop extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('HomeDesktop')),
    );
  }
}