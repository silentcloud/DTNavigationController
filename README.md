iOS 自定义push、pop 和手势返回动画，具体看演示图片

由于 push 的限制，要想实现比较完美的效果，需要自己在 view 里加 navigationBar

![iOS push 动画](http://silentcloud.github.io/upload/DTnav.gif)

直接使用 pushViewController:animated: 和 popViewControllerAnimated: 方法