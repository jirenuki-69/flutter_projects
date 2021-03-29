import 'package:flutter/material.dart';

class SeccionCategorias extends StatelessWidget {
  const SeccionCategorias({
    Key key,
    @required this.categorias,
  }) : super(key: key);

  final List<String> categorias;

  @override
  Widget build(BuildContext context) {
    final _border = BorderSide(
      width: 2,
      color: Theme.of(context).primaryColor,
    );
    final double categoriaContainerSize = 50;
    final int crossAxisCount = 3;
    final double size = (categoriaContainerSize * 1.5) *
            (categorias.length / crossAxisCount).ceilToDouble() +
        40;
    return Container(
      height: size,
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categorías',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  mainAxisExtent: categoriaContainerSize,
                ),
                padding: EdgeInsets.all(0),
                itemCount: categorias.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        top: _border,
                        right: _border,
                        bottom: _border,
                        left: _border,
                      ),
                      borderRadius: BorderRadius.circular(45.0),
                    ),
                    child: FittedBox(
                      child: Text(
                        categorias[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
