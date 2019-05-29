# super_daddy

超级奶爸

## Getting Started

## ``Waiting for another flutter command to release the startup lock``   的问题

删除 flutter/bin/cache/lockfile  文件

## ``flutter packages get`` 卡住问题

被墙了，修改数据源地址； 

添加环境变量

MAC: 

    export PUB_HOSTED_URL=https://pub.flutter-io.cn
    export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

WINDOWS: 

    PUB_HOSTED_URL ===== https://pub.flutter-io.cn
    FLUTTER_STORAGE_BASE_URL ===== https://storage.flutter-io.cn 

然后在我家这并没有什么卵用，不知道是网的问题还是其它原因。 
最后只能科学上学解决问题。 


## 基本目录建立  
    ..lib/  目录下
  
    components: 组件  封装的组件存放在这里
    model: 对应类的model统一放在model目录
    utils: 通用工具 
    views: 页面
    widgets: 组合的widget或者自定义widget 统一管理  


## 笔记
1.  color: Color.fromARGB(255, 43, 140, 251),  颜色rgb的值； 
    color的值可以是以下方式构造：

        Color c = const Color(0xFF42A5F5);
        Color c = const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
        Color c = const Color.fromARGB(255, 66, 165, 245);
        Color c = const Color.fromRGBO(66, 165, 245, 1.0); 
    详情API文档： https://api.flutter.dev/flutter/dart-ui/Color-class.html 

2. 设置图片圆角 
 
    装饰窗口 DecoratedBox 并不管用， 使用``ClipRRect``可实现效果。  

        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0), //10像素圆角
            child: Image.asset(
                'resources/images/logo.jpeg',
                width: 80.0,
            ),
        ) 

   参考API: https://api.flutter.dev/flutter/widgets/ClipRRect-class.html 

3. ThemeData  设置主题颜色  

    ``primarySwatch`` 替换为 ``primaryColor`` 

        theme: ThemeData(
            primaryColor: Color.fromARGB(255, 43, 140, 251),
        ),

4. 使用iconfont 
  
    从iconfont网站上下载选好的icon,把``.ttf`` 字体文件放在项目目录中， 
    路径自定义，本项目中``assets/fonts/iconfont.ttf `` 
    
    配置pubspec.yaml文件：

        fonts:
            - family: myIconfont
            fonts:
                - asset: assets/fonts/iconfont.ttf

    使用： ``IconData(int codePoint, { String fontFamily, String fontPackage, bool matchTextDirection: false })`` 

        Icon(IconData(0xe758, fontFamily: 'myIconfont')

        // codePoint 对应 iconfont.ttf中的Unicode码，在iconfont添加icon时可查看 
        // fontFamily 对应pubspec.yaml 中配置的 family: myIconfont,字体可配置多个   

5. 命名路由  
    在``MaterialApp()``中添加配置``routes``：
 
        routes: {
            "home_page":(context)=>HomePage(),
            "login_page":(context)=>LoginPage(),
            "register_page":(context)=>Register(),
        }, 

    命名方式跳转： 

        Navigator.pushNamed(context, 'register_page');  

    传参 :

        Navigator.pushNamed(context, 'home_page',arguments: user);  

6. iconfont 引入优化 

 编辑 myicon.dart 文件 

    import 'package:flutter/widgets.dart';

    class MyIcon {
        static const IconData wechat = const _MyIconData(0xe758);
        static const IconData qq = const _MyIconData(0xe601);
        static const IconData weibo = const _MyIconData(0xe611);
    }

    class _MyIconData extends IconData {
        const _MyIconData(int codePoint) : super(codePoint, fontFamily: 'myIconfont');
    }

在使用icon时，引入 myicon.dart 文件 

 使用：     
 
    Icon(MyIcon.wechat)
