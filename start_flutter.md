<!--
 * @Description:
 * @version: v1.0.0
 * @Author: 方方
 * @Date: 2020-03-22 13:17:53
 * @LastEditors: 方方
 * @LastEditTime: 2020-03-22 14:51:43
 -->
 Flutter 简介
 =====================

## 1. Flutter 是什么？
Flutter 是 Google推出并开源的移动应用开发框架，主打跨平台、高保真、高性能。开发者可以通过 Dart语言开发 App，一套代码同时运行在 iOS 和 Android平台。 Flutter提供了丰富的组件、接口，开发者可以很快地为 Flutter添加 native扩展。同时 Flutter还使用 Native引擎渲染视图，这无疑能为用户提供良好的体验。

### 1.1 跨平台自绘引擎
Flutter与用于构建移动应用程序的其它大多数框架不同，因为Flutter既不使用WebView，也不使用操作系统的原生控件。 相反，Flutter使用自己的高性能渲染引擎来绘制widget。这样不仅可以保证在Android和iOS上UI的一致性，而且也可以避免对原生控件依赖而带来的限制及高昂的维护成本。

### 1.2 高性能
Flutter高性能主要靠两点来保证，首先，Flutter APP采用Dart语言开发。Dart在 JIT（即时编译）模式下，速度与 JavaScript基本持平。但是 Dart支持 AOT，当以 AOT模式运行时，JavaScript便远远追不上了。速度的提升对高帧率下的视图数据计算很有帮助。其次，Flutter使用自己的渲染引擎来绘制UI，布局数据等由Dart语言直接控制，所以在布局过程中不需要像RN那样要在JavaScript和Native之间通信，这在一些滑动和拖动的场景下具有明显优势，因为在滑动和拖动过程往往都会引起布局发生变化，所以JavaScript需要和Native之间不停的同步布局信息，这和在浏览器中要JavaScript频繁操作DOM所带来的问题是相同的，都会带来比较可观的性能开销。

### 1.3 采用Dart语言开发
在混合APP开发中都使用JavaScript来作为开发语言，Flutter为什么选择了 Dart而不是 JavaScript？

我们先来介绍两个概念：`JIT` 和 `AOT`。

目前，程序主要有两种运行方式：静态编译与动态解释。静态编译的程序在执行前全部被翻译为机器码，通常将这种类型称为`AOT` （Ahead of time）即 “提前编译”；而解释执行的则是一句一句边翻译边运行，通常将这种类型称为`JIT`（Just-in-time）即“即时编译”。

* AOT: C、C++ ...

* JIT: JavaScript、python ...

Dart 同时支持`JIT`与`AOT`.

## 2. Flutter框架结构

![Flutter框架结构](https://pcdn.flutterchina.club/imgs/1-1.png)


Flutter Framework

* 底下两层（Foundation和Animation、Painting、Gestures）在Google的一些视频中被合并为一个dart UI层，对应的是Flutter中的dart:ui包，它是Flutter引擎暴露的底层UI库，提供动画、手势及绘制能力。

* Rendering层，这一层是一个抽象的布局层，它依赖于dart UI层，Rendering层会构建一个UI树，当UI树有变化时，会计算出有变化的部分，然后更新UI树，最终将UI树绘制到屏幕上，这个过程类似于React中的虚拟DOM。Rendering层可以说是Flutter UI框架最核心的部分，它除了确定每个UI元素的位置、大小之外还要进行坐标变换、绘制(调用底层dart:ui)。

* Widgets层是Flutter提供的的一套基础组件库，在基础组件库之上，Flutter还提供了 Material 和Cupertino两种视觉风格的组件库。**而我们Flutter开发的大多数场景，只是和这两层打交道**。

Flutter Engine

* 这是一个纯 C++实现的 SDK，其中包括了 Skia引擎、Dart运行时、文字排版引擎等。在代码调用 dart:ui库时，调用最终会走到Engine层， 然后实现真正的绘制逻辑。

> `Skia`是Google的一个2D图形处理函数库，包含字型、坐标转换，以及点阵图都有高效能且简洁的表现，Skia是跨平台的，并提供了非常友好的API，目前Google Chrome浏览器和Android均采用Skia作为其绘图引擎。  Flutter只关心向GPU提供视图数据，然后通过Google自己的Skia渲染引擎想GPU提供数据。所以说Flutter是直接通过Skia自己进行渲染，而不是调用某些API，这也是Flutter一直宣称原生体验的原因。

## 3 学习资源

* Gallery源码：Gallery是Flutter官方示例APP，里面有丰富的示例，读者可以在网上下载安装。Gallery的源码在Flutter源码“examples”目录下。
* Github：下载一些开源的项目看代码。
* StackOverflow：如果你还没听过StackOverflow，这是目前全球最大的程序员问答社区，现在也是活跃度最高的Flutter问答社区。StackOverflow上面除了世界各地的Flutter使用者会在上面交流之外，Flutter开发团队的成员也经常会在上面回答问题。
* Flutter中文网社区：Flutter中文网(https://flutterchina.club)




开发环境搭建 - (Mac OS)
======

## 工具安装
1. 下载Xcode 以便用来运行`ios`模拟器 - App Store
2. 下载Android Studio 用来开发和运行`android`模拟器；主要开发工具。
3. 下载 flutter SDK （有点慢，有需要直接找我copy） 下载地址：https://flutter.dev/docs/development/tools/sdk/releases
4. 解压flutter压缩包到你想要存放的目录下
5. 配置环境变量 在 ~/.base_profile 文件中添加

```
    // PATH后面对应你电脑上flutter根目录的路径
    export PATH=/Users/rewafang/developmentTools/flutter/bin:$PATH

    // 为国内开发者建立的临时镜像 国内访问flutter官网会被墙
    export PUB_HOSTED_URL=https://pub.flutter-io.cn
    export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```
执行命名  `source ~/.base_profile` 生效；

>如遇到执行后不生效 有可能是zsh执行`~/.zshrc`文件; 没有使`.base_profile`文件中配置的环境变量生效。

>在 `.zshrc`文件中最后一行添加`source ~/.base_profile ` 在每次启动zsh终端时执行`source ~/.base_profile `命令。

 6. Android Studio 安装Flutter和Dart插件
需要安装两个插件:

    Flutter插件： 支持Flutter开发工作流 (运行、调试、热重载等)。

    Dart插件： 提供代码分析 (输入代码时进行验证、代码补全等)。
安装步骤：
    + 启动Android Studio。
    + 打开插件首选项 (macOS：Preferences>Plugins)。
    + 搜索 flutter 插件并点击 install。
    + 搜索 dart 插件并点击 install。
    + 重启Android Studio后插件生效

7. 执行flutter doctor 检测环境是否搭建成功。
