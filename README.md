
- Lesson_1 初识ReactNative, 以及Node.js 等基础环境搭建.

Facebook 在 [React.js Conf 2015](http://conf.reactjs.com/) 大会上推出了基于 JavaScript 的开源框架 [React Native](http://facebook.github.io/react-native/),React Native 结合了 Web 应用和 Native 应用的优势,可以使用 JavaScript 来开发 iOS 和 Android 原生应 用。在 JavaScript 中用 React 抽象操作系统原生的 UI 组件,代替 DOM 元素来渲染等, React Native 使你能够使用基于 JavaScript 和 React (http://wiki.jikexueyuan.com/project/react/) 一致的 开发体验在本地平台上构建世界一流的应用程序体验。React Native 把重点放在所有开发人员关心的平台的开发 效率上——开发者只需学习一种语言就能轻易为任何平台高效地编写代码

在iOS开发中, 有了 ReactNative,你可使用标准平台组件,比如 iOS 平台上的 UITabBar 和 UINavigationController。这可 以让你的应用程序拥有和原生平台一致的外观和体验,并保持较高的品质。使用相应的 React 组件,如 iOS 标 签栏和 iOS 导航器,这些组件可以轻松并入你的应用程序中。

- 异步执行

JavaScript 应用代码和原生平台之间所有的操作都是异步执行,并且原生模块也可以使用额外线程。这意味着我 们可以解码主线程图像,并将其在后台保存至磁盘,在不阻塞 UI 的情况下进行文本和布局的估量计算,等等。因 此,React Native 应用程序的流畅度和响应性都非常好。通信也是完全可序列化的,当运行完整的应用程序 时,这允许我们使用 Chrome Developer Tools 来调试 JavaScript,或者在模拟器中,或者在真机上。

- 触摸处理

iOS 有一个非常强大的系统称为 Responder Chain,可以用来响应复杂视图层级中的事件,但是在 Web 中并 没有类似功能的工具。React Native 可实现类似的响应系统并提供高水平的组件,比如 TouchableHighligh t,无需额外配置即可与滚动视图和其他元素适度整合

- 弹性框和样式

布局视图应该是简单的,所以我们将 Web 平台上的弹性框模块引入了 React Native。弹性框可用来搭建最常用 的 UI 布局,比如代用边缘和填充的堆叠和嵌入。React Native 还支持常见的 Web 样式,比如 fontWeight 和 StyleSheet 抽象,它们提供了一种优化机制来宣称你所有的样式和布局在组件中的应用是正确的,且组件把它们 应用到了内网中

- Polyfills

React Native 的重点是改变视图代码编写的方式。接下来,我们注意网络中普遍的并把那些 API 放在适当的地 方。可以使用 npm 安装 JavaScript 库,这些库用于融入到 React Native 中的顶级功能,比如 XMLHttpRequ est,window.requestAnimationFrame 及 navigator.geolocation。

- 可扩展性

使用 React Native 无需编写一行原生代码即可创建出一款不错的应用程序,并且 React Native 可通过自定义 原生视图和模块来进行扩展--也就是说你可以重用你已经构建的任何内容,并且可导入和使用你最喜欢的原生 库。为了在 iOS 中创建一个简单的模块,需要创建一个新的类来实现 RCTBridgeModule 协议,并将你想要在 RCT_EXPORT_METHOD 中对 JavaScript 可用的功能包装起来。另外,类本身必须可以用 RCT_EXPOR T_MODULE() 显式导出;

自定义的 iOS 视图可以通过子类化 RCTViewManager,实现 -(UIView *)view 方法并用 RCT_EXPORT_VI EW_PROPERTY 宏导出属性的办法来公开。然后一个简单的 JavaScript 文件会连接这些点。

--- 

##### 到此为止, 以上全是扯淡。下边开始看一下环境的搭建.

- 需要的环境:

1. OS X – 现在这个仓库只包含 iOS 实现,且 Xcode 只能在 Mac 上运行
2. 不知道 Xcode 吗?从 Mac App Store 上 下载它 [Xcode](https://developer.apple.com/xcode/downloads/) 
3. 安装 node,watchman,flow 的推荐方法是 [Homebrew](http://brew.sh/)
4. brew install node 不知道 [node](https://nodejs.org/) 和 [npm](https://docs.npmjs.com/)
5. brew install flow 如果你想使用 [flow](http://www.flowtype.org/)

- 开始配置环境(下边的操作全部在终端)

1. npm install -g react-native-cli (react-native-cli 是一个命令行接口,做设置之余的工作。它通过 npm 安装。这将在您的终端作为命令安 装 react-native 。这项工作你只需要做一次)
2. react-native init AwesomeProject (这个命令获取 React Native 源代码和依赖项,然后在 AwesomeProject/AwesomeProject.xcodeproj 上
创建一个新的 Xcode 项目)
3. 在新建的文件夹 AwesomeProject/ 中, 打开 AwesomeProject.xcodeproj ,点击 Xcode 中的运行, 打开你选择的文本编辑器中的 index.ios.js ,并且对一些行进行编辑。在你的 iOS 模拟器中点击 cmd + R 两次, 看看有什么变 化!

