import 'package:flutter/material.dart';

class TabScrollSyncPage extends StatefulWidget {
  const TabScrollSyncPage({super.key});

  @override
  State<TabScrollSyncPage> createState() => _TabScrollSyncPageState();
}

class _TabScrollSyncPageState extends State<TabScrollSyncPage> {
  late ScrollController _scrollController;
  final Map<String, GlobalKey> _keys = {};
  String _activeSection = 'intro';

  final List<Map<String, dynamic>> sections = [
    {'id': 'intro', 'title': 'Intro', 'color': Colors.red},
    {'id': 'features', 'title': 'Features', 'color': Colors.green},
    {'id': 'pricing', 'title': 'Pricing', 'color': Colors.blue},
    {'id': 'faq', 'title': 'FAQ', 'color': Colors.orange},
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    for (var section in sections) {
      _keys[section['id']] = GlobalKey();
    }

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    for (var section in sections) {
      final key = _keys[section['id']]!;
      final context = key.currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        final offset = box.localToGlobal(Offset.zero).dy;

        if (offset < 200 && offset > -400) {
          if (_activeSection != section['id']) {
            setState(() {
              _activeSection = section['id'];
            });
          }
          break;
        }
      }
    }
  }

  void _scrollToSection(String id) {
    final key = _keys[id];
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Horizontal Tabs (Row)
          Container(
            height: 60,
            color: Colors.grey[200],
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: sections.map((section) {
                  final bool isActive = _activeSection == section['id'];
                  return GestureDetector(
                    onTap: () => _scrollToSection(section['id']!),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: isActive ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text(
                        section['title'] as String,
                        style: TextStyle(
                          color: isActive ? Colors.white : Colors.black,
                          fontWeight: isActive
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          // ✅ Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: sections.map((section) {
                  return Container(
                    key: _keys[section['id']],
                    height: 600,
                    color: section['color'],
                    alignment: Alignment.center,
                    child: Text(
                      section['title'] as String,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
