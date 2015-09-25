# Carousel App

This is a replica user interface of the carousel app for iPhone.

Time spent: 10 hours spent in total

Completed user stories:

Static photo tiles on the initial screen
* [x] Optional: Photo tiles move with scrolling
Sign In
* [x] Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
* [x] User sees an error alert when no email is present or no password is present.
* [x] User sees a loading screen upon tapping the Sign In button.
* [x] User sees an error alert when entering the wrong email/password combination.
* [x] User is taken to the tutorial screens upon entering the correct email/password combination.
* [x] Optional: On appear, scale the form up and fade it in.
Tutorial Screens
* [x] User can page between the screens
* [x] Optional: User can page between the screens with updated dots
* [x] Optional: Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.
Image Timeline
* [x] Display a scrollable view of images.
* [x] User can tap on the conversations button to see the conversations screen (push).
* [x] User can tap on the profile image to see the settings view (modal from below).
Settings
* [x] User can dismiss the settings screen.
* [x] User can log out

Notes: Animating the photo tiles to move with scrolling was very tricky. I got it almost all the way there but not quite (spent too much time). It seemed whenver I performed the Core Graphics Affine tranforms for scaling, rotating, and translating that they would interact in different ways depending upon which lines of code came first. Not sure why.

Walkthrough of all user stories:

![video](https://cloud.githubusercontent.com/assets/1372815/10106748/5bdbcfac-636b-11e5-8ccd-8953a0a6dda2.gif)

