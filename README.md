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




