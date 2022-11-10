import 'dart:ui';
import 'package:curso/pages/PageViews/contato.dart';
import 'package:curso/pages/PageViews/dashboard.dart';
import 'package:curso/pages/PageViews/todo_list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'PageViews/cadastrar.dart';
import 'PageViews/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forge Soluções Digitais'),
      ),
      drawer: Drawer(
        width: 180,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Lucas'),
              accountEmail: Text('lucas@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('L'),
              ),
            ),
            ListTile(
              title: Text('Cadastrar'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: Text('Dashboard'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: Text('Contato'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 2;
                });
              },
            ),
            ListTile(
              title: Text('Lista'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(3);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 3;
                });
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [Cadastrar(), Dasoboard(), Contato(), TodoListPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            _pageController.animateToPage(
              page,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                label: 'Cadastrar'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
                color: Colors.black,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_mail,
                color: Colors.black,
              ),
              label: 'Contato',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.black,
              ),
              label: 'List',
            ),
          ]),
    );
  }
}
