This is the new repository for the Eduapps Template, I moved it from the educational_apps repository in order to organize our work and make things clear for developers and product owners.

## How can I use this repository ?

just as before, you need to clone this repository to your local machine, after that you can safely delete the README.md file.

It is recommended to rename the Eduapps Template folder to the name of your lesson before beginning your work,

for example if you are working on unit 4 lesson 4 Representing Statistics Data in 6th primary,

you should rename your "Eduapps Template" folder to "6th-primary-Lesson4-Unit4-Representing_Statistics_Data",

then you can begin your work.

## I finished my application, how can I push it to educational_apps repository ?

first you need to clone the educational_apps repository to your local machine by opening a git bash in the desired location and typing:

`git clone https://github.com/EduApps-Egypt/educational_apps`

then you need to copy Your application folder ( the one inside your AppTemplate folder ) and paste it in the educational_apps folder, it should be something like this:

![eduapps](https://i.ibb.co/FhgffLz/1.jpg)

after that open a git bash in educational_apps folder and create a new branch and rename it to your lesson name:

`git checkout -b 6th-primary-unitx-lessony-Test`

add your folder to the local branch:

`git add .`

create a commit and give it a message:

`git commit -m "Initial commit"`

push your changes to the remote branch:

`git push origin 6th-primary-unitx-lessony-Test`

#### Warning: Don't push to the master branch

after that go to the educational_apps repistory: [url](https://github.com/EduApps-Egypt/educational_apps)

and create a pull request then wait for product owners to review your application.

## What if I wanted to update my application ?

you can make the same steps, create a commit and push it to your current branch and make a pull request again if your work if merged.

## How can I customize the layout and styling of my page ?

**You can find more about the parameters that can be passed to customize your page layout and styling by reading the AppInitialization [documentation](https://github.com/EduApps-Egypt/Packages/blob/main/AppInitialization/README.md)**
