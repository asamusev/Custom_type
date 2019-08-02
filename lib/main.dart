import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListPage(),
    ); 
  }
}


class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: allMsg.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(allMsg[index].username),
            subtitle: Text(allMsg[index].text),
            leading:
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage( allMsg[index].avatar)
          ),
          ); 
        }
      )
    );
  }
}

class Message{
  String text;
  String username;
  String avatar;

  Message({this.text, this.username, this.avatar});
}

List<Message> allMsg = [
Message(username: 'Захаров Никита', text: 'Удачи', avatar:'https://zabavnik.club/wp-content/uploads/Milye_kartinki_dlya_ld_1_06122128.jpg'),
Message(username: 'Силин Родион', text: 'Привет, ты сесгодня занят?', avatar: 'https://klike.net/uploads/posts/2019-03/medium/1551512888_2.jpg'),
Message(username: 'Суворов Павел', text: 'Я фанат OnePunchMan', avatar: 'https://news.rambler.ru/img/2019/02/08183509.990560.6642.jpg'),
Message(username: 'Кабанов Данила', text: 'Ты где игра нашлась!!', avatar: 'https://kartinki.detki.today/wp-content/uploads/2017/07/kartinka-dlya-detey-lev-1150x863.jpg'),
Message(username: 'Савин Михаил', text: 'Пока', avatar: 'https://www.ejin.ru/wp-content/uploads/2017/12/2-3-696x392.jpg'),
Message(username: 'Маслов Орест', text: 'Напиши как освободишься', avatar: 'https://fairytail-online.ru/uploads/posts/2017-05/1494438751_oabababa.jpg'),
Message(username: 'Беседа класса', text: 'Николаев Прохор: Куда завтра отправляемся?', avatar:'https://st.depositphotos.com/1010338/2099/i/450/depositphotos_20999947-stock-photo-tropical-island-with-palms.jpg'),
Message(username: 'Ильин Зигмунд', text: 'Пойдешь в кино?', avatar: 'https://i.5sfer.com/post/postImage/thumb-17621.jpg'),
Message(username: 'Чухрай Яромир', text: 'Ладно жду', avatar: 'https://oboitut.com/uploads/posts/2019-05/thumbs/_oboitut.com_1557739977.jpg'),
Message(username: 'Федотов Иван', text: 'Быстрее', avatar: 'https://tochka-rosta-sokolniki.ru/wp-content/uploads/kartinki-dlya-devochek-10-let-prikolnye_1.jpg'),


];