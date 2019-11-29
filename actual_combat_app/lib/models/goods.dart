//列表：准备数据
class Good {
  //Good表示的是用户发布的内容
  const Good({
    this.title,
    this.imageUrl,
    this.price,
  });

  final String title;
  final String imageUrl;
  final String price;
}


final List<Good> goods = [
   Good(
    title: '初冬薄棉服380g重磅外套',
    price: '￥188.0',
    imageUrl: 'assets/images/colthes02.png',
  ),
  Good(
    title: '反季羊毛大衣女2018新款双面呢大衣修身',
    price: '￥388.0',    
    imageUrl: 'assets/images/colthes03.jpg',
  ),
  Good(
    title: 'Contained',
    price: '￥99.0',    
    imageUrl: 'assets/images/colthes02.png',
  ),

];