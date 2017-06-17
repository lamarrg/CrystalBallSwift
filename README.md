# CrystalBallSwift

The Crystal Ball app has beeb rebuilt in Swift.

I used the UIView animation method to handle the animation. Based on the original tutorial, it was based on the background UIView. A problem with this is that after the animation was complete, it left the view blank. I could have used a timer with an array, but I wanted to try something different. 

I attempted a few things to have the background reset after the animation was complete, but nothing was working the way I wanted. (maybe more on this later). So I decided to add another UIView, now I have a background and animation layer. Once the animation is completed (disappears), the background layer stays and shows the default. Much easier than trying to force something that doesn't want to happen.
