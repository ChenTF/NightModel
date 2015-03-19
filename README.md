# NightModel
iOS 夜间模式

夜间模式主要通过 NSNotificationCenter实现, 难点在于可扩展性 与 后期的维护性

讲解:

1.因为夜间模式是所有页面都要更改, 所以将通知的添加与移除放到 BaseViewController中

2.每个类有都需要单独设置自己的夜间情况, 所以在 BaseViewController中有两个公共接口

3.因为大部分夜间设置是通用的, 所以封装出 NightManager类进行统一设置

4.因为夜间模式状态需要本地存储, 所以封装 AccountManager类进行管理,当然 AccountManager类不应该只有这个功能, 以后的自动登录, 账户信息存储应也设置在这.



注意:

若用代码创建控件. 不能在 viewDidLoad方法中进行alloc init, 需要将alloc init放到  initWithNibName 中.  可以在viewDidLoad中设置属性, 包括frame.



提醒:

self.view addSubview:不能写在init方法中, 应写在viewDidLoad中.(正常写法)
