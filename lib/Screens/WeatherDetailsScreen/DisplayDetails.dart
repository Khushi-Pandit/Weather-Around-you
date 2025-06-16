// import 'package:flutter/material.dart';
// import 'LinearGradient.dart';
// import 'WeatherModel.dart';
//
// class DisplayData extends StatefulWidget {
//   const DisplayData({super.key, required this.searchIt});
//   final SearchIt searchIt;
//
//   @override
//   State<DisplayData> createState() => _DisplayDataState();
// }
//
// class _DisplayDataState extends State<DisplayData> {
//   late SearchIt _weatherData;
//
//   @override
//   void initState() {
//     super.initState();
//     _weatherData = widget.searchIt;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final isSmallDevice = screenWidth < 360;
//
//     final baseFont = screenWidth * 0.045;
//     final titleFont = screenWidth * 0.04;
//     final valueFont = screenWidth * 0.055;
//     final iconSize = screenWidth * 0.07;
//
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: gradientColorDeciding(_weatherData.weatherCondition),
//           ),
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               return SingleChildScrollView(
//                 child: ConstrainedBox(
//                   constraints: BoxConstraints(minHeight: constraints.maxHeight),
//                   child: IntrinsicHeight(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: screenWidth * 0.05,
//                         vertical: screenHeight * 0.025,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           SizedBox(height: screenHeight * 0.015),
//                           _details(
//                             title: "City Name",
//                             value: _weatherData.name,
//                             icon: Icons.location_city,
//                             titleFont: titleFont,
//                             valueFont: valueFont,
//                             iconSize: iconSize,
//                           ),
//                           SizedBox(height: screenHeight * 0.02),
//                           _details(
//                             title: "Temperature",
//                             value: '${_weatherData.tempCelsius.toStringAsFixed(2)}°C',
//                             icon: Icons.thermostat,
//                             titleFont: titleFont,
//                             valueFont: valueFont,
//                             iconSize: iconSize,
//                           ),
//                           SizedBox(height: screenHeight * 0.02),
//                           _details(
//                             title: 'Weather Condition',
//                             value: _weatherData.weatherCondition,
//                             icon: Icons.wb_cloudy,
//                             titleFont: titleFont,
//                             valueFont: valueFont,
//                             iconSize: iconSize,
//                           ),
//                           SizedBox(height: screenHeight * 0.02),
//                           _details(
//                             title: 'Humidity',
//                             value: '${_weatherData.humidity}%',
//                             icon: Icons.opacity,
//                             titleFont: titleFont,
//                             valueFont: valueFont,
//                             iconSize: iconSize,
//                           ),
//                           SizedBox(height: screenHeight * 0.02),
//                           _details(
//                             title: 'Wind Speed',
//                             value: '${_weatherData.windSpeed} m/s',
//                             icon: Icons.air,
//                             titleFont: titleFont,
//                             valueFont: valueFont,
//                             iconSize: iconSize,
//                           ),
//                           const Spacer(),
//                           SizedBox(height: screenHeight * 0.02),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _details({
//     required String title,
//     required String value,
//     required IconData icon,
//     required double titleFont,
//     required double valueFont,
//     required double iconSize,
//   }) {
//     return Card(
//       elevation: 6,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       margin: const EdgeInsets.symmetric(vertical: 4),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: titleFont,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.grey[800],
//               ),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(icon, size: iconSize, color: Colors.blueAccent),
//                 const SizedBox(width: 12),
//                 Flexible(
//                   child: Text(
//                     value,
//                     style: TextStyle(
//                       fontSize: valueFont,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'LinearGradient.dart';
import 'WeatherModel.dart';

class DisplayData extends StatefulWidget {
  const DisplayData({super.key, required this.searchIt});
  final SearchIt searchIt;

  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {
  late SearchIt _weatherData;

  @override
  void initState() {
    super.initState();
    _weatherData = widget.searchIt;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallDevice = screenWidth < 360;

    final baseFont = screenWidth * 0.045;
    final titleFont = screenWidth * 0.04;
    final valueFont = screenWidth * 0.055;
    final iconSize = screenWidth * 0.07;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: gradientColorDeciding(_weatherData.weatherCondition),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.025,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: screenHeight * 0.015),
                          _details(
                            title: "City Name",
                            value: _weatherData.name,
                            icon: Icons.location_city,
                            titleFont: titleFont,
                            valueFont: valueFont,
                            iconSize: iconSize,
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          _details(
                            title: "Temperature",
                            value: '${_weatherData.tempCelsius.toStringAsFixed(2)}°C',
                            icon: Icons.thermostat,
                            titleFont: titleFont,
                            valueFont: valueFont,
                            iconSize: iconSize,
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          _details(
                            title: 'Weather Condition',
                            value: _weatherData.weatherCondition,
                            icon: Icons.wb_cloudy,
                            titleFont: titleFont,
                            valueFont: valueFont,
                            iconSize: iconSize,
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          _details(
                            title: 'Humidity',
                            value: '${_weatherData.humidity}%',
                            icon: Icons.opacity,
                            titleFont: titleFont,
                            valueFont: valueFont,
                            iconSize: iconSize,
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          _details(
                            title: 'Wind Speed',
                            value: '${_weatherData.windSpeed} m/s',
                            icon: Icons.air,
                            titleFont: titleFont,
                            valueFont: valueFont,
                            iconSize: iconSize,
                          ),
                          const Spacer(),
                          SizedBox(height: screenHeight * 0.02),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _details({
    required String title,
    required String value,
    required IconData icon,
    required double titleFont,
    required double valueFont,
    required double iconSize,
  }) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: titleFont,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, size: iconSize, color: Colors.blueAccent),
                const SizedBox(width: 12),
                Flexible(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: valueFont,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
