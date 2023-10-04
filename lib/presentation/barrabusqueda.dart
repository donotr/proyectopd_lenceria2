import 'package:flutter/material.dart';

class OurSearchBar extends StatelessWidget {
  const OurSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child:SingleChildScrollView(             
                  reverse: true,
                  child:
                Column(
                  children: [
                    SearchAnchor(builder:
                            (BuildContext context, SearchController controller) {
                      return SearchBar(
                        controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 16.0)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(Icons.search),
                        trailing: <Widget>[
                          Tooltip(
                            message: 'Change filters',
                            child: IconButton(
                              onPressed: () {
                                //settear filtro
                                setState(() {});
                              },
                              icon: const Icon(Icons.filter_list_alt),
                              color: const Color.fromARGB(216, 107, 45, 117),
                            ),
                          )
                        ],
                      );
                    },
                        // Aqui muestra sugerencias de busqueda
    
                        suggestionsBuilder:
                            (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    }),
                  ],
                ),
                )
              ),
    );
  }
  
  void setState(Null Function() param0) {}
}