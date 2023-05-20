import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class SongsTableData extends StatelessWidget {
  const SongsTableData({Key? key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: kIconNotSelected,
      ),
      child: DataTable(
        dividerThickness: 0.5, // Adjust the thickness of the divider as needed
        // horizontalMargin: 50, // Adjust the horizontal margin as needed
        columns: const [
          DataColumn(label: SongText(lebo: '#')),
          DataColumn(label: SongText(lebo: 'Title')),
          DataColumn(label: SongText(lebo: 'Album')),
          DataColumn(label: SongText(lebo: 'Date added')),
          DataColumn(label: SongText(lebo: 'Time')),
        ],

        rows: List<DataRow>.generate(
          55, // Adjust the number of rows to 55
          (index) => DataRow(
            cells: List<DataCell>.generate(
              5, // Adjust the number of cells to match the number of columns
              (columnIndex) => DataCell(
                SongText(lebo: 'R ${index + 1}, C ${columnIndex + 1}'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SongText extends StatelessWidget {
  const SongText({
    super.key,
    required this.lebo,
  });
  final String lebo;

  @override
  Widget build(BuildContext context) {
    return Text(
      lebo,
      style: TextStyle(color: kTextColor),
    );
  }
}
