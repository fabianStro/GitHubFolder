import 'package:flutter/material.dart';

class TNSolution extends StatefulWidget {
  const TNSolution({super.key});

  @override
  State<TNSolution> createState() => _TNSolutionState();
}

class _TNSolutionState extends State<TNSolution> {
  final List<Map<String, String>> _data = [
    {'title': 'Naruto Shippuuden', 'subtitle': 'A Story about a young ninja obessed with his favourite Ramen-Place'},
    {'title': 'Mashle', 'subtitle': 'The protagonist is just unbelievably overpowered'},
    {'title': 'Spy x Family', 'subtitle': 'Story about a family that isnt a real family'},
    {'title': 'Assassination Classroom', 'subtitle': 'Yellow Mutant that teaches children how to kill'},
    {'title': 'Saiki K', 'subtitle': 'A Story about a psychic with unhumanly abilities'},
  ];

  late List<Map<String, String>> _filtered;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filtered = List.from(_data);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateFilter(String query) {
    final q = query.trim().toLowerCase();
    setState(() {
      if (q.isEmpty) {
        _filtered = List.from(_data);
      } else {
        _filtered = _data.where((item) => item['title']!.toLowerCase().contains(q)).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search by Title')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              onChanged: _updateFilter,
              decoration: InputDecoration(
                hintText: 'Search titles...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _controller.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _controller.clear();
                          _updateFilter('');
                        },
                      )
                    : null,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          Expanded(
            child: _filtered.isEmpty
                ? const Center(child: Text('No results'))
                : ListView.builder(
                    itemCount: _filtered.length,
                    itemBuilder: (context, index) {
                      final item = _filtered[index];
                      return ListTile(title: Text(item['title']!), subtitle: Text(item['subtitle'] ?? ''));
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
