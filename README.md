# Lonely Gym Guide

This application is an informative app that will help beginners in the gym to wrap their heads around different exercises, muscles group, and workout splits.

## Pacakges and main Widgets I have used

I have developed this app using flutter. I used the provider package for state management, even though my data is locally for now, I also used url_launcher, a package that helped to make hyperlinks in my app and they were launched in-app web view. Make sure to read the official [doc](https://pub.dev/packages/url_launcher) for more info about how this package works. Furthermore, I used flutter_launcher_icons and flutter_native_splash, for adding the app icon and the splash screen. Check out the official docs to see how they work [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons), [flutter_native_splash](https://pub.dev/packages/flutter_native_splash). 

For the widgets, I used Gridview, I also used RichText widget alot in my app, which is a widget that displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. For the animation, I used the hero widget and the customScrollView combined with SliverList and SliverAppBar, for having nice animation between the appbar and the excercise image. 

