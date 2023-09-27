import 'package:flutter/material.dart';
import 'checkout.dart';
import 'profile_screen.dart';
import  'VendorProfile.dart';
import  'FilterScreen.dart';
import 'package:table_calendar/table_calendar.dart';



int cartItems = 0;


// NAV BAR IMPLEMENTATION







//

class VendorDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Details'),
      ),
      body: Column(
        children: [
          // Vendor image
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/monal.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          // Vendor information
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Monal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Banquet Hall',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Availability',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                // Calendar widget for availability
                TableCalendar(
                  firstDay: DateTime.now(),
                  lastDay: DateTime.now().add(Duration(days: 365)),
                  focusedDay: DateTime.now(),
                  calendarFormat: CalendarFormat.month,
                  onDaySelected: (selectedDay, focusedDay) {},
                ),
              ],
            ),
          ),
          // Add to cart button
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
              );
              // Add vendor to cart
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}



/*
class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Center(
        child: Text('This is the checkout page'),
      ),
    );
  }
}
*/






// NAV BAR -- CATEGORIES













//









//











//filter implementaion




class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  Map<String, dynamic> filterOptions = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace App'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Nav Bar
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Filter button
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    _openFilterScreen();
                  },
                  color: Colors.blue,
                ),
                // Profile icon
                IconButton(
                  icon: Icon(Icons.account_circle),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          // Item box
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                itemCount: 10, // Replace with your actual item count
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // Item widget code here
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openFilterScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FilterScreen()),
    );

    if (result != null) {
      setState(() {
        filterOptions = result;
      });

      // TODO: Apply the selected filters and update the item list accordingly
    }
  }
}

























class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace App'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {



Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckoutScreen()),
        );




            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Nav Bar
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Filter button
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {




            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterScreen()),
                    );














                    
                  },
                  
                  color: Colors.blue,
                ),
                // Profile icon

                
                IconButton(
                   icon: Icon(Icons.account_circle),
                
                  
                    
                    color: Colors.blue,
                    
                     onPressed: () {

                          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );








              



                     },
                    
                   
                  ),
                 
                
              ],
            ),
          ),
          // Item box




// Item box
Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: ListView.builder(

      
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            // Navigate to Vendor Details Screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VendorDetailsPage(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 20,
          ),
          SizedBox(width: 10),
          Text(
            'Venue $index',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          ElevatedButton(
            
        onPressed: () {



Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VendorProfile()));



          //vendor profile button
        },
        child: Text('Vendor Profile'),
      ),
        ],
      ),
      SizedBox(height: 10),
      // Image
      Container(
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/monal.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      SizedBox(height: 10),
      Row(
        children: [
          // Price
          Icon(Icons.attach_money),
          Text('\$50'),
          SizedBox(width: 20),
          // Distance
          Icon(Icons.location_on),
          Text('5 km'),
          SizedBox(width: 20),
          // Availability
          Icon(Icons.access_time),
          Text('Open now'),
        ],
      ),
      SizedBox(height: 10),
                ElevatedButton(
                  child: Text('Add to Cart'),
                  onPressed: () {
                    // TODO: Implement add to cart functionality

                     Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckoutScreen()),
                     );


                  },    
                ),
              ],
            ),
            
          ),   
          
          
        );
        
        
      },
    ),
  ),
  
),









/*


          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 255, 255, 255),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/monal.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Item $index',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            // Price
                            Icon(Icons.attach_money),
                            Text('\$50'),
                            SizedBox(width: 20),
                            // Distance
                            Icon(Icons.location_on),
                            Text('5 km'),
                            SizedBox(width: 20),
                            // Availability
                            Icon(Icons.access_time),
                            Text('Open now'),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ), */
        ],
      ),
    );
  }
}













class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  int cartItems = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have added $cartItems items to your cart',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {


                
                setState(() {
                  cartItems++;
                });
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}



class VendorProfile extends StatefulWidget {
  @override
  _VendorProfileState createState() => _VendorProfileState();
}

class _VendorProfileState extends State<VendorProfile> {
  final List<String> items = ["Item 1", "Item 2", "Item 3"];
  final double _starRating = 4.5;
  final int _numReviews = 20;
  final int _numOrders = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vendor Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),




        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://via.placeholder.com/150x150.png?text=Vendor+Avatar"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vendor Name",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 4),
                        Text(
                          _starRating.toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "($_numReviews reviews)",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "$_numOrders past orders",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 16),
            Text(
              "Menu",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text("${index + 1}"),
                    ),
                    title: Text(items[index]),
                    subtitle: Text("\$${index + 1}"),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
    
  }
  
}




















// NAV BAR IMPLEMENTATION







