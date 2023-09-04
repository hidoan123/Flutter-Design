import 'package:flutter/material.dart';
class CoffeeTile extends StatelessWidget
{
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[800],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //images
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/cappuccino-DxP3KQE-600.jpg'),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text('Tile', style: TextStyle(fontSize: 20),),
                 const SizedBox(height: 4,),
                 Text('With Almond Milk', style: TextStyle(fontSize: 16,color: Colors.grey[600]),)
             ],),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$4.00',style: TextStyle(fontSize: 16),),
                  Container(
                    padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: const Icon(Icons.add),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

}