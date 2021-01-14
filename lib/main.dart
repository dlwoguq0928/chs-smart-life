import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '청송군 스마트 라이프',
      theme: ThemeData(
        fontFamily: 'JSDongkang',
        primaryColor: Colors.blueAccent,
        accentColor: Colors.blue,
        brightness: Brightness.light,
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )
      ),
      home: PageMain(),
    );
  }
}

class PageMain extends StatefulWidget {
  @override
  PageMainState createState() => PageMainState();
}

class PageMainState extends State<PageMain> {

  C1Unit(imgsrc, txt)
  {
    return FlatButton(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left:8, right:8),
            child: CircleAvatar(
              radius: 56,
              backgroundImage: NetworkImage(imgsrc,),
            ),
          ),
          Text(txt, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),),
        ],
      ),
      onPressed: () {},
    );
  }

  C2Unit(imgsrc, txt)
  {
    return FlatButton(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 64,
            margin: EdgeInsets.only(left:8, right:8),
            child: Image.asset(imgsrc),
          ),
          Text(txt, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ],
      ),
      onPressed: () {},
    );
  }

  C3Unit(imgsrc, txt)
  {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left:4, right:4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              Image.network(
                imgsrc,
                fit: BoxFit.fill,
                width: 140.0,
                height: 160.0,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white30,Colors.white54])),
                alignment: Alignment.bottomLeft,
                width: 140.0,
                height: 160.0,
                child: Container(
                    margin:EdgeInsets.all(8),
                    child: Text(txt,style: TextStyle(fontSize: 18,color: Colors.deepOrange),)
                ),
              )
            ],
          )
        ),
      ),
      onTap: () {},
    );
  }

  C4Unit(imgsrc, header, subtxt)
  {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left:4, right:4),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Stack(
              children: [
                Image.network(
                  imgsrc,
                  fit: BoxFit.fill,
                  width: 200.0,
                  height: 150.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent,Colors.black54])),
                  alignment: Alignment.bottomLeft,
                  width: 200.0,
                  height: 150.0,
                  child: Container(
                      margin:EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(header,style: TextStyle(fontSize: 18,color: Colors.white),),
                          Text(subtxt,style: TextStyle(fontSize: 14,color: Colors.white, fontWeight: FontWeight.w100),)
                        ],
                      )
                  ),
                )
              ],
            )
        ),
      ),
      onTap: () {},
    );
  }

  C5Unit(imgsrc, header, subtxt)
  {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Stack(
              children: [
                Image.network(
                  imgsrc,
                  fit: BoxFit.fill,
                  height: 320.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black45,Colors.transparent])),
                  alignment: Alignment.bottomLeft,
                  height: 320.0,
                  child: Container(
                      margin:EdgeInsets.all(32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(header,style: TextStyle(fontSize: 24,color: Colors.white),),
                          Text(subtxt,style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w100),)
                        ],
                      )
                  ),
                )
              ],
            )
        ),
      ),
      onTap: () {},
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(54),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
              padding: EdgeInsets.all(8),
              child:Text('산소카페 청송군', style: TextStyle(fontSize:16, fontWeight:FontWeight.bold, color: Colors.black),),
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, color: Colors.black,),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              )
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Color.fromRGBO(248, 248, 248, 1),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                alignment: Alignment.topCenter,
                height: 100,
                child: DrawerHeader(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                child: Icon(Icons.close, size: 28,),
                                onTap: () => Navigator.of(context).pop()
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Icon(Icons.notifications, size: 28,),
                                  onTap: () {},
                                ),
                                Padding(padding: EdgeInsets.all(8),),
                                GestureDetector(
                                  child: Icon(Icons.settings, size: 28,),
                                  onTap: () {},
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                ),
              ),
              ListTile(
                tileColor: Colors.white,
                title: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top:8, bottom:4),
                      child: Text('날씨', style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                        padding: EdgeInsets.only(top:4, bottom:8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.wb_cloudy, size: 40,),
                                Text(' 6˚', style: TextStyle(fontSize: 40),),
                              ],
                            ),
                            Text('청송읍', style: TextStyle(fontSize: 24)),
                            Text('업데이트 1/14 오후 3:41', style: TextStyle(fontSize: 16))
                          ],
                        )
                    ),
                  ],
                ),
              ),
              /*
              Padding(padding: EdgeInsets.all(4),),
              ListTile(
                  tileColor: Colors.white,
                  title: Container(
                      height: 128,
                      margin: EdgeInsets.only(left:16, right:16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('이재협', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                                Text('청송읍', style: TextStyle(fontSize: 20,),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/31565895?s=460&u=2a2d1ce30b992853256ed62a179cc24abb6fa6dc&v=4'),
                            ),
                          ),
                        ],
                      )
                  )
              ),
              Padding(padding: EdgeInsets.all(4),),
              Column(
                children: [
                  ListTile(
                      tileColor: Colors.white,
                      title: Container(
                          margin: EdgeInsets.only(left:16, right:16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('공지사항',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              Icon(Icons.arrow_forward_ios, size: 16,),
                            ],
                          )
                      )
                  ),
                  Padding(padding: EdgeInsets.all(1),),
                  ListTile(
                      tileColor: Colors.white,
                      title: Container(
                          margin: EdgeInsets.only(left:16, right:16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('자주 묻는 질문',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              Icon(Icons.arrow_forward_ios, size: 16,),
                            ],
                          )
                      )
                  ),
                  Padding(padding: EdgeInsets.all(1),),
                  ListTile(
                      tileColor: Colors.white,
                      title: Container(
                          margin: EdgeInsets.only(left:16, right:16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('고객센터',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              Icon(Icons.arrow_forward_ios, size: 16,),
                            ],
                          )
                      )
                  ),
                ],
              ),
               */
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(24),
            child: Text('이재협님을 위한\n마을 정보가 있습니다!'),
          ),
          Container(
            padding: EdgeInsets.only(top:24,left:24),
            child: Text('가볼만한 곳', style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: EdgeInsets.only(top:16),
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.only(left:16),),
                C1Unit('https://www.cs.go.kr/img/content/songso01.jpg', '송소고택'),
                C1Unit('https://www.cs.go.kr/img/content/soheon01.png', '소헌공원'),
                C1Unit('https://www.cs.go.kr/img/content/yaksutang01.png', '약수탕'),
                C1Unit('https://www.cs.go.kr/img/content/gaekju01.png', '객주문학관'),
                C1Unit('https://www.cs.go.kr/img/content/yasong01.png', '청송야송미술관'),
                C1Unit('https://www.cs.go.kr/img/content/20170531.jpg', '항일의병기념공원'),
                C1Unit('https://www.cs.go.kr/img/content/beosun01.jpg', '외씨버선길'),
                Padding(padding: EdgeInsets.only(right:16),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:24,left:24),
            child: Text('즐거운 식사 시간', style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: EdgeInsets.only(top:16, left:16, right:16),
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                C2Unit('assets/img/c2-1.png', '카페·편의점'),
                C2Unit('assets/img/c2-2.png', '식당'),
                C2Unit('assets/img/c2-3.png', '마트'),
                C2Unit('assets/img/c2-4.png', '배달'),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.only(top:24,left:24),
            child: Text('생활방역 준수 안심식당', style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: EdgeInsets.only(top:16),
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.only(left:16),),
                C3Unit('https://www.cs.go.kr/img/content/c00006761_img03.jpg', '왕버들식당'),
                C3Unit('https://www.cs.go.kr/img/content/c00006761_img03.jpg', '만수무강'),
                C3Unit('https://www.cs.go.kr/img/content/c00006761_img03.jpg', '한우동산'),
                C3Unit('https://www.cs.go.kr/img/content/c00006761_img03.jpg', '송이가든'),
                C3Unit('https://www.cs.go.kr/img/content/c00006761_img03.jpg', '신촌식당'),
                Padding(padding: EdgeInsets.only(right:16),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:24, left:24, right:24),
            child: FlatButton(
              height: 50,
              color: Colors.deepOrangeAccent,
              child: Text('모두 보기', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
              onPressed: () {},
            )
          ),
          Container(
            padding: EdgeInsets.only(top:24,left:24),
            child: Text('주왕산국립공원', style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: EdgeInsets.only(top:16),
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.only(left:16),),
                C4Unit('https://www.cs.go.kr/img/content/juowang01.jpg', '주왕산', '경상북도 청송군 주왕산면 공원길 169-7(상의리 산333-1)'),
                C4Unit('https://www.cs.go.kr/img/content/jusanji01.jpg', '주산지', '경상북도 청송군 주왕산면 주산지길163(주산지리 87)'),
                C4Unit('https://www.cs.go.kr/img/content/jeolgol01.jpg', '절골계곡', '경상북도 청송군 주왕산면 주산지리 77-1'),
                Padding(padding: EdgeInsets.only(right:16),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:24,left:24),
            child: Text('청송군청 공지사항', style: TextStyle(fontSize: 20),),
          ),
          Container(
              padding: EdgeInsets.only(top:24,left:24,right:24),
              height: 320,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('2021년 1학기 농촌출신 대학생 학자금 융자사업 안내', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('yyyy-mm-dd 농정과', style: TextStyle(fontSize: 14),),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('보건의료원 의료진 변경 안내', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('yyyy-mm-dd OO과', style: TextStyle(fontSize: 14),),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('2021년 경북농민사관학교 교육생 모집', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('yyyy-mm-dd OO과', style: TextStyle(fontSize: 14),),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('소상공인 버팀목 자금 신청 안내', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('yyyy-mm-dd OO과', style: TextStyle(fontSize: 14),),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('건강진단서 (구.보건증), 공무원채용신체검사 업무재개 안내', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('yyyy-mm-dd OO과', style: TextStyle(fontSize: 14),),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('2021년 귀농 농업창업 및 주택구입지원사업', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('yyyy-mm-dd OO과', style: TextStyle(fontSize: 14),),
                    onTap: () {},
                  ),
                ],
              )
          ),
          Container(
            padding: EdgeInsets.only(top:24,left:24),
            child: Text('농특산물 구매', style: TextStyle(fontSize: 20),),
          ),
          Container(
              padding: EdgeInsets.only(top:24,left:24,right:24),
              child: Column(
                children: [
                  C5Unit('https://www.cs.go.kr/img/content/c559_img01.jpg', '신선한 사과', '일교차가 크고 일조량이 풍부한 지역에서 생산되어 당도가 높고 육질이 단단한 것이 특징입니다.'),
                  C5Unit('https://file.namu.moe/file/8bc9e381797334eb33da66e3ba501be1561d6497ce243896b5afdb175956a8afef569b95a78a25e2e262951992c7267d', '송이버섯', '신선한 송이는 익히지 않은 상태에서도 특유의 진한 소나무향을 느낄 수 있습니다.'),
                ],
              )
          ),
          Container(
            color: Color.fromRGBO(248, 248, 248, 1),
            child: Container(
              height: 150,
              margin: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('피시아 (PHYSIA) | 대표 이재협\n사업자등록번호 843-05-01605\n통신판매업 신고번호 2020-서울관악-2686\n피시아는 통신판매중개자로서 통신판매의 당사자가 아니며\n상품 거래정보 및 거래 등에 대해 책임을 지지 않습니다.',style:TextStyle(fontSize: 13, color: Colors.black54, fontWeight: FontWeight.w100)),
                  GestureDetector(
                    child: Text('개인정보 처리방침',style:TextStyle(fontSize: 13)),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}