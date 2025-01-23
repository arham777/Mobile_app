import 'package:flutter/material.dart';

class SkillBar extends StatefulWidget {
  final String skillName;
  final int percentage;

  const SkillBar({ super.key ,required this.skillName, required this.percentage});

  @override
  State<SkillBar> createState() => _SkillBarState();
}

class _SkillBarState extends State<SkillBar> {

  double progress= 0.0;

  @override

  void initState(){
    super.initState();
    setState(() {
      progress= widget.percentage.toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.skillName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
      
          const SizedBox(height: 12,),
      
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: progress/100,
                  color: Colors.blue,
                  backgroundColor: Colors.grey,
                  minHeight: 8,
                ),
              ),

              const SizedBox(width: 10,),
              
              Text('${widget.percentage}%',
                style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
            ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}