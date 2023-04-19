import 'package:flutter/material.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

import 'cuia_app_bar_controller.dart';
import 'widgets/store_widget.dart';
import 'widgets/support_widget.dart';

class CuiaAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CuiaAppBar({
    this.title = "Workspace",
    this.onIndexTap,
    this.showStoreButton = true,
    Key? key,
  }) : super(key: key);

  final String title;
  final Function()? onIndexTap;
  final bool showStoreButton;

  @override
  State<CuiaAppBar> createState() => _CuiaAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CuiaAppBarState extends State<CuiaAppBar> {
  final controller = Modular.get<CuiaAppBarController>();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: const Color(0xff2196f3),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap:
                widget.onIndexTap ?? () => Modular.to.pushReplacementNamed("/"),
            child: CuiaLogo.horizontal(
              text: widget.title,
              width: 50,
              fontSize: 18,
            ),
          ),
          Row(
            children: [
              if (widget.showStoreButton) const StoreWidget(),
              const SizedBox(width: 20),
              const SupportWidget(),
              const SizedBox(width: 20),
              // Profile
              FutureBuilder(
                future: controller.init(),
                builder: (_, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircleAvatar(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return PopupMenuButton(
                    position: PopupMenuPosition.under,
                    itemBuilder: (_) => const [
                      PopupMenuItem<int>(
                        value: 0,
                        child: Text("Perfil"),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text("Carrinho"),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text("Configurações"),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child:
                            Text("Sair", style: TextStyle(color: Colors.red)),
                      ),
                    ],
                    onSelected: _onSelected,
                    child: CircleAvatar(
                      child: Text(
                        snapshot.data!.name!
                            .split(" ")
                            .map((e) => e.substring(0, 1).toUpperCase())
                            .toList()
                            .join(),
                      ),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _onSelected(int value) async {
    if (value == 0) controller.openProfile();
    if (value == 1) controller.openCart();
    if (value == 2) controller.openSettings();
    if (value == 3) controller.logout();
  }
}
