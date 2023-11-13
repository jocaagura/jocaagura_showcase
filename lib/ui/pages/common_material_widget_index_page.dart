import 'package:flutter/material.dart';
import 'package:jocaagura_showcase/ui/widgets/date_picker_example.dart';

import '../widgets/animated_linear_progress_indicator_widget.dart';
import '../widgets/basic_showcase_widget.dart';
import '../widgets/checkbox_example.dart';
import '../widgets/dialog_example.dart';
import '../widgets/navigation_list_tile.dart';
import '../widgets/pop_menu_example.dart';
import 'common_material_widgets_page.dart';

class CommonMaterialWidgetIndexPage extends StatelessWidget {
  const CommonMaterialWidgetIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Material index page'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          NavigationListTile(
            page: CommonMaterialWidgetsPage(
              label: 'Buttons',
              materialWidgets: <BasicShowcaseWidget>[
                BasicShowcaseWidget(
                  label: 'Elevated button - focused',
                  child: ElevatedButton(
                    onPressed: () {},
                    autofocus: true,
                    child: const Text('Test me'),
                  ),
                ),
                const BasicShowcaseWidget(
                  label: 'Elevated button inactive',
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text("Can't hit me"),
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'Elevated button',
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Test me'),
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'Filled button - focused',
                  child: FilledButton(
                    onPressed: () {},
                    autofocus: true,
                    child: const Text('Test me'),
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'Filled button',
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text('Test me'),
                  ),
                ),
                const BasicShowcaseWidget(
                  label: 'Filled button - inactive',
                  child: FilledButton(
                    onPressed: null,
                    child: Text("Can't hit me"),
                  ),
                ),
                // Filled button tonal
                BasicShowcaseWidget(
                  label: 'Filled tonal button - focused',
                  child: FilledButton.tonal(
                    onPressed: () {},
                    autofocus: true,
                    child: const Text('Test me'),
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'Filled tonal button',
                  child: FilledButton.tonal(
                    onPressed: () {},
                    child: const Text('Test me'),
                  ),
                ),
                const BasicShowcaseWidget(
                  label: 'Filled tonal button - inactive',
                  child: FilledButton.tonal(
                    onPressed: null,
                    child: Text("Can't hit me"),
                  ),
                ),
                // outlined button
                BasicShowcaseWidget(
                  label: 'OutlinedButton - focused',
                  child: OutlinedButton(
                    onPressed: () {},
                    autofocus: true,
                    child: const Text('Test me'),
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'OutlinedButton button',
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Test me'),
                  ),
                ),
                const BasicShowcaseWidget(
                  label: 'OutlinedButton - inactive',
                  child: OutlinedButton(
                    onPressed: null,
                    child: Text("Can't hit me"),
                  ),
                ),
                // Text button
                BasicShowcaseWidget(
                  label: 'TextButton - focused',
                  child: TextButton(
                    onPressed: () {},
                    autofocus: true,
                    child: const Text('Test me'),
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'TextButton button',
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Test me'),
                  ),
                ),
                const BasicShowcaseWidget(
                  label: 'TextButton - inactive',
                  child: TextButton(
                    onPressed: null,
                    child: Text("Can't hit me"),
                  ),
                ),

                // Text button
                BasicShowcaseWidget(
                  label: 'IconButton - focused',
                  child: IconButton(
                    onPressed: () {},
                    autofocus: true,
                    icon: const Icon(Icons.hearing),
                    tooltip: 'Tengo tooltip',
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'IconButton button',
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.save),
                    tooltip: 'Tengo tooltip',
                  ),
                ),
                const BasicShowcaseWidget(
                  label: 'IconButton - inactive',
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.heart_broken),
                    tooltip: 'Tengo tooltip',
                  ),
                ),
                BasicShowcaseWidget(
                  label: 'Segmented button',
                  child: SegmentedButton<int>(
                    onSelectionChanged: (Set<int> value) {},
                    segments: const <ButtonSegment<int>>[
                      ButtonSegment<int>(
                        value: 1,
                        label: Text('D'),
                        icon: Icon(Icons.calendar_view_day),
                      ),
                      ButtonSegment<int>(
                        value: 2,
                        label: Text('W'),
                        icon: Icon(Icons.calendar_view_week),
                      ),
                      ButtonSegment<int>(
                        value: 3,
                        label: Text('M'),
                        icon: Icon(Icons.calendar_view_month),
                      ),
                      ButtonSegment<int>(
                        value: 4,
                        label: Text('Y'),
                        icon: Icon(Icons.calendar_today),
                      ),
                    ],
                    selected: const <int>{1, 3},
                    multiSelectionEnabled: true,
                  ),
                ),
              ],
            ),
            title: 'Buttons',
            subTitle: 'Showcase your buttons main components.',
          ),

          NavigationListTile(
              page: CommonMaterialWidgetsPage(
                label: 'Communication widgets',
                materialWidgets: [
                  BasicShowcaseWidget(
                    label: 'Badge',
                    child: Badge(
                      label: const Text('1'),
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Theme.of(context).splashColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Icon(Icons.heart_broken),
                      ),
                    ),
                  ),
                  const BasicShowcaseWidget(
                    label: 'LinearProgressIndicator',
                    child: Center(
                      child: AnimatedLinearProgressIndicatorWidget(),
                    ),
                  ),
                  const BasicShowcaseWidget(
                    label: 'Dialog Example',
                    child: DialogExample(),
                  ),
                  BasicShowcaseWidget(
                    label: 'ListTile',
                    child: Container(
                      color: Theme.of(context).primaryColorLight,
                      child: const ListTile(
                        title: Text('One list tile'),
                      ),
                    ),
                  ),
                  BasicShowcaseWidget(
                    label: 'ListTile',
                    child: Container(
                      color: Theme.of(context).primaryColorLight,
                      child: const ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('One list tile trailing'),
                      ),
                    ),
                  ),
                  BasicShowcaseWidget(
                    label: 'ListTile',
                    child: Container(
                      color: Theme.of(context).primaryColorLight,
                      child: const ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('One list tile trailing'),
                      ),
                    ),
                  ),
                  BasicShowcaseWidget(
                    label: 'ListTile',
                    child: Container(
                      color: Theme.of(context).primaryColorLight,
                      child: const ListTile(
                        leading: FlutterLogo(),
                        title: Text('One list tile leading'),
                        subtitle: Text('This is the subtitle'),
                      ),
                    ),
                  ),
                  BasicShowcaseWidget(
                    label: 'ListTile',
                    child: ColoredBox(
                      color: Theme.of(context).primaryColorLight,
                      child: const ListTile(
                        leading: FlutterLogo(),
                        title: Text('One list tile leading'),
                        subtitle: Text('This is the subtitle\nThird line'),
                      ),
                    ),
                  ),
                  BasicShowcaseWidget(
                    label: 'Divider',
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: double.maxFinite,
                              color: Theme.of(context).primaryColor,
                              child: const Text('above'),
                            ),
                          ),
                          const Divider(
                            height: 20,
                            thickness: 5,
                            endIndent: 5,
                            indent: 5,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: double.maxFinite,
                              color: Theme.of(context).primaryColorLight,
                              child: const Text('below'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  BasicShowcaseWidget(
                    label: 'Card',
                    child: Card(
                      elevation: 5.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('BUY TICKETS'),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                child: const Text('LISTEN'),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  BasicShowcaseWidget(
                    label: 'Card',
                    child: Card(
                      elevation: 0.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.heart_broken),
                            title: Text('No elevation'),
                            subtitle: Text(
                              'Music by Flow GPT.',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const Expanded(child: SizedBox(width: 8)),
                              TextButton(
                                child: const Text('+ Info'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              title: 'Communication widgets',
              subTitle: 'Items used for communicate actions to the user'),

          NavigationListTile(
            title: 'Selection',
            subTitle: 'Used for user interaction',
            page: CommonMaterialWidgetsPage(
              label: 'Selection widgets',
              materialWidgets: <BasicShowcaseWidget>[
                const BasicShowcaseWidget(
                  label: 'Checkbox',
                  child: CheckboxExample(),
                ),
                const BasicShowcaseWidget(
                  label: 'Date Picker',
                  child: DatePickerExample(restorationId: 'main'),
                ),
                const BasicShowcaseWidget(
                  label: 'Pop menú',
                  child: PopupMenuExample(),
                ),
                BasicShowcaseWidget(
                  label: 'Checkbox',
                  child: Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColorDark,
                      child: Icon(
                        Icons.person,
                        size: 20.0,
                        color: Theme.of(context).canvasColor,
                      ),
                    ),
                    label: const Text('Aaron Burr'),
                  ),
                ),
              ],
            ),
          ),
          //
        ],
      ),
    );
  }
}
