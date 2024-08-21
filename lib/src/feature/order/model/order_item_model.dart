class OrderItem {
  final String id; // Unique identifier for the item
  final String dressImage;
  final String dressName;
  final String color;
  final String size;
  int itemCount;
  final int pricePerItem;

  OrderItem({
    required this.id,
    required this.dressImage,
    required this.dressName,
    required this.color,
    required this.size,
    this.itemCount = 1,
    required this.pricePerItem,
  });
}

List<OrderItem> getDummyData() {
  return [
    OrderItem(
      id: '1',
      dressImage: 'https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-manei-2235071.jpg&fm=jpg',
      dressName: 'Pullover',
      color: 'Black',
      size: 'L',
      itemCount: 2,
      pricePerItem: 10,
    ),
    OrderItem(
      id: '2',
      dressImage: 'https://assets.ajio.com/medias/sys_master/root/20240406/jTor/6610dc8616fd2c6e6aa17c06/-473Wx593H-466855053-yellow-MODEL.jpg',
      dressName: 'Jacket',
      color: 'Blue',
      size: 'M',
      itemCount: 1,
      pricePerItem: 30,
    ),
    OrderItem(
      id: '3',
      dressImage: 'https://t3.ftcdn.net/jpg/02/82/58/80/360_F_282588077_TWISFkA7AfnDlmw4rafbInsVoBmG67VP.jpg',
      dressName: 'Dress',
      color: 'Red',
      size: 'S',
      itemCount: 3,
      pricePerItem: 20,
    ),
  ];
}