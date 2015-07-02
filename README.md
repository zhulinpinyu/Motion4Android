# Motion4Android
1. Colorful [HelloWorld Demo for rubymotion android](./Colorful)
2. ListThings [use list show data and click open web view ](./ListThings)
3. Weather [网络读取json数据 并显示](./Weather)
4. Timer [view 布局](./Timer)
5. Quiz [原生Android 的方式 实现Layout, 以及文本常量值values](./Quiz)


# 参考资料
1.[引入jar包的配置](http://www.bounga.org/ruby/2015/04/21/loading-shared-library-in-android-using-rubymotion/)

    app.vendor_project jar: 'vendor/android-pdfview-1.0.2.jar'
  
  或者 引入jar包同时引入 xx.so  
  
    app.vendor_project jar: 'vendor/android-pdfview-1.0.2.jar', native: ["vendor/armeabi/libvudroid.so"]
