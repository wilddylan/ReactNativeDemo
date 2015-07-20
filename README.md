边讲边练习, 每天的代码都会上传到GitHub的Public仓库, 随着进度慢慢更新。 欢迎Fork以及找BUG。

[ReactNativeDemo Git](https://github.com/WildDylan/ReactNativeDemo)

#### Lesson_1 初识ReactNative, 以及Node.js 等基础环境搭建.
</br>
##### 初识 ReactNative
</br>
&nbsp;&nbsp;&nbsp;&nbsp; Facebook 在 [React.js Conf 2015](http://conf.reactjs.com/) 大会上推出了基于 JavaScript 的开源框架 [React Native](http://facebook.github.io/react-native/),React Native 结合了 Web 应用和 Native 应用的优势,可以使用 JavaScript 来开发 iOS 和 Android 原生应 用。在 JavaScript 中用 React 抽象操作系统原生的 UI 组件,代替 DOM 元素来渲染等, React Native 使你能够使用基于 JavaScript 和 React (http://wiki.jikexueyuan.com/project/react/) 一致的 开发体验在本地平台上构建世界一流的应用程序体验。React Native 把重点放在所有开发人员关心的平台的开发 效率上——开发者只需学习一种语言就能轻易为任何平台高效地编写代码

&nbsp;&nbsp;&nbsp;&nbsp;在iOS开发中, 有了 ReactNative,你可使用标准平台组件,比如 iOS 平台上的 UITabBar 和 UINavigationController。这可 以让你的应用程序拥有和原生平台一致的外观和体验,并保持较高的品质。使用相应的 React 组件,如 iOS 标 签栏和 iOS 导航器,这些组件可以轻松并入你的应用程序中。

- 异步执行

&nbsp;&nbsp;&nbsp;&nbsp;JavaScript 应用代码和原生平台之间所有的操作都是异步执行,并且原生模块也可以使用额外线程。这意味着我 们可以解码主线程图像,并将其在后台保存至磁盘,在不阻塞 UI 的情况下进行文本和布局的估量计算,等等。因 此,React Native 应用程序的流畅度和响应性都非常好。通信也是完全可序列化的,当运行完整的应用程序 时,这允许我们使用 Chrome Developer Tools 来调试 JavaScript,或者在模拟器中,或者在真机上。

- 触摸处理

&nbsp;&nbsp;&nbsp;&nbsp;iOS 有一个非常强大的系统称为 Responder Chain,可以用来响应复杂视图层级中的事件,但是在 Web 中并 没有类似功能的工具。React Native 可实现类似的响应系统并提供高水平的组件,比如 TouchableHighligh t,无需额外配置即可与滚动视图和其他元素适度整合

- 弹性框和样式

&nbsp;&nbsp;&nbsp;&nbsp;布局视图应该是简单的,所以我们将 Web 平台上的弹性框模块引入了 React Native。弹性框可用来搭建最常用 的 UI 布局,比如代用边缘和填充的堆叠和嵌入。React Native 还支持常见的 Web 样式,比如 fontWeight 和 StyleSheet 抽象,它们提供了一种优化机制来宣称你所有的样式和布局在组件中的应用是正确的,且组件把它们 应用到了内网中

- Polyfills

&nbsp;&nbsp;&nbsp;&nbsp;React Native 的重点是改变视图代码编写的方式。接下来,我们注意网络中普遍的并把那些 API 放在适当的地 方。可以使用 npm 安装 JavaScript 库,这些库用于融入到 React Native 中的顶级功能,比如 XMLHttpRequ est,window.requestAnimationFrame 及 navigator.geolocation。

- 可扩展性

&nbsp;&nbsp;&nbsp;&nbsp;使用 React Native 无需编写一行原生代码即可创建出一款不错的应用程序,并且 React Native 可通过自定义 原生视图和模块来进行扩展--也就是说你可以重用你已经构建的任何内容,并且可导入和使用你最喜欢的原生 库。为了在 iOS 中创建一个简单的模块,需要创建一个新的类来实现 RCTBridgeModule 协议,并将你想要在 RCT_EXPORT_METHOD 中对 JavaScript 可用的功能包装起来。另外,类本身必须可以用 RCT_EXPOR T_MODULE() 显式导出;

&nbsp;&nbsp;&nbsp;&nbsp;自定义的 iOS 视图可以通过子类化 RCTViewManager,实现 -(UIView *)view 方法并用 RCT_EXPORT_VI EW_PROPERTY 宏导出属性的办法来公开。然后一个简单的 JavaScript 文件会连接这些点。

##### 环境搭建以及Demo运行
</br>
- 需要的环境:

1.OS X – 现在这个仓库只包含 iOS 实现,且 Xcode 只能在 Mac 上运行
2.不知道 Xcode 吗?从 Mac App Store 上 下载它 [Xcode](https://developer.apple.com/xcode/downloads/) 
3.安装 node,flow 的推荐方法是 [Homebrew](http://brew.sh/)
4.brew install node 不知道 [node](https://nodejs.org/) 和 [npm](https://docs.npmjs.com/)
5.brew install flow 如果你想使用 [flow](http://www.flowtype.org/)

- 开始配置环境(下边的操作全部在终端)

1.npm install -g react-native-cli (react-native-cli 是一个命令行接口,做设置之余的工作。它通过 npm 安装。这将在您的终端作为命令安 装 react-native 。这项工作你只需要做一次)
2.react-native init AwesomeProject (这个命令获取 React Native 源代码和依赖项,然后在 AwesomeProject/AwesomeProject.xcodeproj 上
创建一个新的 Xcode 项目)
3.在新建的文件夹 AwesomeProject/ 中, 打开 AwesomeProject.xcodeproj ,点击 Xcode 中的运行, 打开你选择的文本编辑器中的 index.ios.js ,并且对一些行进行编辑。在你的 iOS 模拟器中点击 cmd + R 两次, 看看有什么变 化!

![52158218_2.jpg](http://upload-images.jianshu.io/upload_images/144590-1d380d873ac62d91.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

##### 研究
</br>
- index.ios.js 源码分析

```javascript
'use strict'; // 全局进入严格模式

/**< 
消除Javascript语法的一些不合理、不严谨之处，减少一些怪异行为;
消除代码运行的一些不安全之处，保证代码运行的安全；
提高编译器效率，增加运行速度；
为未来新版本的Javascript做好铺垫。
*/

var React = require('react-native');

/**<
这句代码是将 react-native 模块加载进来
并将它赋值给变量 React
React Native 使用同 Node.js 相同的模块加载方式：require
这个概念可以等同于 Swift 中的“链接库”或者“导入库”。
*/

var {
  AppRegistry,
  StyleSheet,
  Text,
  View,
} = React;

var AwesomeProject = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Text style={styles.textStyle}>
          Welcome to React Native!
        </Text>
      </View>
    );
  }
});

/**<
有JS编程经验的童鞋可以看的出来, 就是创建一个类的对象
然后render, 这个方法用于返回组件, 里边的Text 就是我们看到的文本, View就相当于我们的UIView
通过styles.container 调取下边的css样式进行显示
*/

var styles = StyleSheet.create({

textStyle: {
    width: 100,
    height: 30,
    marginTop: 100,
    marginLeft: 100
},
});

/**< 
以上代码定义了一段应用在Demo的样式
如果你曾接触过Web开发，那你很可能已经发现了：React Native 使用的是 CSS 来定义应用界面的样式。
*/

AppRegistry.registerComponent('AwesomeProject', () => AwesomeProject);

/**<
AppRegistry 定义了App的入口，并提供了根组件。
*/

```

- AppDelegate.m

```objc

// 当应用开始运行的时候，RCTRootView将会从以下的URL中加载应用：
// 重新调用了你在运行这个App时打开的终端窗口，它开启了一个 packager 和 server 来处理上面的请求。
// 在 Safari 中打开那个 URL；你将会看到这个 App 的 JavaScript 代码
    jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle"];

//   jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];

// 当你的App开始运行了以后，这段代码将会被加载进来，然后 JavaScriptCore 框架将会执行它。在例子里，它将会加载组件，然后构建出原生的 UIKit 视图
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"AwesomeProject"
                                                   launchOptions:launchOptions];

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *rootViewController = [[UIViewController alloc] init];
    rootViewController.view = rootView;
    self.window.rootViewController = rootViewController;
```

> 了解到以上的一些东西, 我们是时候把React集成到我们自己的项目中看看了.

#####  继承到我的项目里边

1.新建项目, 命名为ReactNativeDemo
2.使用cocoapods导入React

```json
pod 'React'
pod 'React/RCTText'
```

3. 在项目中新建文件夹 ReactView, 用于盛放接下来的ReactNative的视图
4.在根目录下, 建立ReactComponent文件夹, 并在文件夹下按照之前Demo的方式添加一个index.ios.js的文件。

![屏幕快照 2015-07-20 下午11.50.51.png](http://upload-images.jianshu.io/upload_images/144590-7d7e4a1405a03878.png?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

5. 文件内容我们按照Demo的样式来写（要注意的是, 29行的模块名称是后续一直要使用的名称）
![屏幕快照 2015-07-20 下午11.51.39.png](http://upload-images.jianshu.io/upload_images/144590-e141f9a8b405701b.png?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

6.创建ReactView继承与UIView, 并为其添加bridge属性与reload方法

![屏幕快照 2015-07-20 下午11.53.00.png](http://upload-images.jianshu.io/upload_images/144590-20f316e007e872eb.png?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

![屏幕快照 2015-07-20 下午11.53.06.png](http://upload-images.jianshu.io/upload_images/144590-22687f04fbdd712f.png?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

可以看到, 在.m 文件中我们按照Demo的方式进行了视图的加载, 并且添加到当前的View上边.

在这里, 先给属性bridge赋值, 在外部可以通过reload方法重新加载视图。

7.在StoryBoard中创建ReactView并添加简单约束

![屏幕快照 2015-07-20 下午11.56.24.png](http://upload-images.jianshu.io/upload_images/144590-6e629195c7c7b849.png?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

![屏幕快照 2015-07-20 下午11.56.58.png](http://upload-images.jianshu.io/upload_images/144590-2d405d6af279fd8f.png?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

在.m 文件中实现点击按钮reload的方法.

8. 运行我们的React.
首先, 终端中进入当前文件夹. ReactNativeDemo, 然后运行命令, 
```
 (JS_DIR=`pwd`/ReactComponent; cd Pods/React; npm run start -- --root $JS_DIR) 
```
这个命令将在我们的 CocoaPods 依赖中启动一个 React Native 开发服务器,来创建捆绑脚本。 ——root 选项表明 React Native 应用程序的根——这将是我们包含单一 index.ios.js 文件的 ReactComponents 目录。该运行的服务器将通过 http:/ / localhost:8081 / index.ios.bundle 把 index.ios.bundle 打包成可访问的文件。

9. command + R 运行你的项目, 就会发现成功了!


![Simulator Screen Shot 2015年7月20日 下午11.59.43.png](http://upload-images.jianshu.io/upload_images/144590-faf25839ed215b85.png?imageMogr2/auto-orient/strip|imageView2/2/w/1240)

同时, 你还可以直接更改index中的内容, 点击reload进行重新加载。
如果JS文件编码错误的话, 直接会在屏幕中显示。 对应进行修复就可以了。

#####附： 

- 碰到的问题: 
    - 由于要做新SDK等的探索, 所以把Xcode换到了7.0 iOS更新到了9.0, 此时, 会出现https的问题, 因为在iOS9.0中默认是要求https进行网络数据的访问的。 而ReactNative是http, 所以需要做以下设置:
&nbsp;&nbsp;&nbsp; 1.在Info.plist中添加NSAppTransportSecurity类型Dictionary
&nbsp;&nbsp;&nbsp;2.在NSAppTransportSecurity下添加NSAllowsArbitraryLoads类型Boolean,值设为YES

    - IDE： 这里推荐使用Atom进行JS部分的代码编写, FaceBook也提供了相关的插件[Nuclide](http://nuclide.io/)
