Project.create(name: "Scene Hub",
               app_url: "https://scene-hub.herokuapp.com",
               repo_url: "https://github.com/chrisccerami/scene-hub-v2",
               description: "This app served as my 'breakable toy' (capstone
                            project) for Launch Academy. Scene Hub is a local
                            music tracker that allows musicians to post about
                            concerts they will be performing, and users can
                            search for concerts by zip code/genre. It also
                            creates data-driven maps on each band's profile
                            based on the concert's they have played.")
Project.create(name: "Mars Curiosity API",
               app_url: "https://mars-curiosity-api.herokuapp.com",
               repo_url: "https://github.com/chrisccerami/mars-curiosity-api",
               description: "The Mars Curiosity API is a simple API I built
                            during my first Shit It! Saturday hackathon at Launch Academy.
                            It uses a web scraper I wrote in Ruby to gather all of the
                            photos from the Curiosity Rover from NASA's archive site and
                            makes them available in either HTML or JSON formats.")
Project.create(name: "Skillshare Somerville",
               app_url: "https://somerville-skillshare-staging.herokuapp.com/",
               repo_url: "https://github.com/csnedecor/skillshare_somerville",
               description: "Somerville Skillshare was an app I worked on as
                            part of a small team for my second Ship It! Saturday while I
                            was at Launch Academy. There were some people at the event who
                            needed a web app to replace their WordPress site and myslf and
                            a few other students sat down to talk about an MVP, and
                            finished the first run of the app by the end of the day.")
Project.create(name: "Pizzerium",
               app_url: "https://pizzerium.herokuapp.com",
               repo_url: "https://github.com/chrisccerami/pizza_reviews",
               description: "Pizzerium was the group project I participated in
                            while at Launch Academy. We used the 2 weeks of
                            building our group projects as an introduction
                            to collaborative coding, git workflow, merging
                            pull requests, and how to solve development issues
                            as a team. The app itself is a review site for
                            pizzerias which uses the Yelp API to pull in
                            local pizzerias, Amazon's S3 for image uploads,
                            and has a front end built with the Foundation
                            CSS framework.")

Post.create(title: "Beginning My Dev Journey",
            body: "Since I’m starting the ignition process for Launch Academy today I figured it would be a good idea to write down some thoughts on my progress as I go through this process. Up until this point I’ve done a handful of courses on Codecademy, namely their courses on Ruby, HTML/CSS, and a little JavaScript and PHP. I’ve also been working my way through RailsTutorial.org by Michael Hartl.
I feel like Codecademy was a useful resource for brushing up on concepts like loops and functions that I was familiar with from my days of using MatLab in college, and also for learning new syntax in languages I’m not familiar with, but it didn’t really set me up to work on any substantial projects. It was great for laying a foundation but not much else.
Rails Tutorial, however, I feel is the exact opposite. It’s introducing me to things like controllers, route files, gems, and other important Rails concepts, but it doesn’t go over any fundamentals. It also goes pretty heavily into Test Driven Development which is good, but I’m not sure how of it I’m really absorbing. Either way I feel like I’m getting an idea of what it’s like to work with Rails in a practical sense, which I appreciate.
Today is supposed to be the first day of Ignition for Launch Academy so we’ll see what the work for that is like. I think it’s supposed to be more heavily based on Ruby than Rails, at least at first. ")

Post.create(title: "Ignition - Phase Two",
            body: "Even though I started the second phase of Ignition for Launch Academy yesterday, everything up until today has mostly been a review for me with a few new tidbits here and there. Today however, there were some new things to try.
Since I had already completed the HTML/CSS course on Codecademy I jumped straight into the CSS course on Code School. Again, this was mostly a review, but it did help to clarify a few things I didn’t totally understand, like floating an object. It also introduced me to a new method of clearing other objects from floated elements via a group class. It was a pretty decent course considering I had already done a few other online tutorials on CSS.
Of more interest to me was the course on Code School about the fundamentals of design. I’ve been curious for a while about web design but I haven’t had too many chances to learn about up until now, so I was pretty excited for this opportunity. After completing the course I have a feeling this is the kind of topic I’m going to have to Google pretty often while designing actual sites.
I do feel like it gave me a good idea of the fundamentals though. I know now for example that you should try using varying typefaces from similar families (geometric, humanist, etc) but with differing style (serif, sans serif) in order to provide a good contrast. On the other hand, I still couldn’t tell you which font is from which group off the top of my head, so a quick search for lists of humanist fonts would probably be a part of my design process.
Next up us Javascript and jQuery.")

Post.create(title: "Countdown to Launch Academy",
            body: "As the end of October approaches, it’s almost time for the beginning of my time at Launch Academy in Boston. Tomorrow is also my last day at my current job, so I’ll be dedicating the next two weeks almost entirely to Ruby.
My current focus is practicing with recursion with some relatively simple exercises. I wrote a script to sort a set of words in an array using a recursive method, as described in Learn to Program by Chris Pine.

My strategy was to first push the #min value of the “unsorted” array into a new “sorted” array. After that I deleted the same #min value from unsorted so as to prevent pushing the same value twice. Then I used a call to the recursive_sort method using the same two arrays until the unsorted array was empty.
After that, Learn to Program recommends writing a program to shuffle an array through recursion rather than sort it.

The resulting code was very similar to my recursive_sort method, but rather than pushing the #min value of the list array, it pushes a value at a random index. It then deletes that value from the list, and recursively calls that function again until the list array is empty and the shuffled_list array is full.
Both of these were pretty simple, but I thought it was a decent introduction to the idea of recursion. I plan on spending some more time over the weekend and next week working on it.")

Post.create(title: "Catching Up With Launch Academy",
            body: "I’ve found some free time to write up a blog post, so I figured now was a good time to reflect on my first two weeks at Launch Academy. So far it’s been one of the busiest, but also most satisfying experiences I’ve had. It reminds me a lot of the summer of 2010, when I spent the entire summer performing ecological research in the New Jersey pine barrens.
For almost three months I would wake up early, drive with my research partners down to the swamps and bogs of central New Jersey, record data, collect samples, and drive back home to repeat the process the next day. Once the field work was over there were still weeks of long days in the lab drying and analyzing samples, poring over data, working late into the night. It was incredibly satisfying and a fantastic experience.
Similarly, at Launch I’ve gone to the work space everyday for the last 11 days and worked on everything from mandatory Ruby exercises to optional HTML and CSS challenges to a side project in Sinatra (which I’ll write about separately). Unlike my previous job, where I would count down the hours until 5 o’clock when I could leave, I’m now losing track of time completely and staying late because I love the work I’m doing.
By the end of the first week, I felt like my grasp on programming in Ruby had increased immensely. Being in an environmental where I can work with other talented, devoted people, and fully focus on immersing myself in programming, has been far more rewarding than I even imagined.
Right now I’ve been working with Sinatra to build some small, simple dynamic web apps. For the required work at Launch, we’ve made things like a news aggregator site that allows user to submit links to news articles, a traversable movie database, and a site for a mock kickball league that my partner and I styled after the fabulous Space Jam website that hasn’t been updated since 1996.
I’ve begun to notice a pattern here where things seem bleak at the beginning of each week as we’re introduced to a new set of challenges, and by the end of each week things seem infinitely more possible. I’m looking forward to next week, when we’ll start working with SQL and Postgres to add some more permanence to our apps.")

Post.create(title: "Side Project #1 - Local Music Tracker",
            body: "At Launch we’ve been encouraged to work on side projects as early and as often as we’re comfortable with (or maybe even a little uncomfortable with), and I couldn’t wait to jump right into an idea that’s been kicking around in my head for a little while now.
One of my passions is going to see live music, and I think there’s nothing better than catching a local band at a small venue or a house party or a basement or a park. Being able to see passionate, upcoming musicians perform, to get to meet them, buy their albums or t-shirts, is something that energizes me and connects me to my surroundings.
The problem with shows like this is that they can be hard to find out about unless you’re already in the know. If you follow a band or an indie label on Facebook or Twitter, or check in with a site like Boston Hassle about shows they organize, you might never even know these shows are happening, and that’s if the show has been posted online anywhere. What I wanted was a repository where smaller bands could post upcoming shows, and fans of live music could find shows that were happening nearby.

That was the inspiration for this particular app. I have it developed to a point so far where shows can be posted (with band name, venue, zip code, and a description) and they will displayed on the home page. Users can also enter their zip code and using an API (courtesy of www.zipcodeapi.com) the site will display any shows that may be within a certain mile radius.
There are still a ton of obvious features that need to be added, like user logins, validation, uploading photos, and a million other things, but I’m really happy to at least have the basic framework of an app up and running in just a few days using really simple tools like Sinatra and DataMapper.
As I make more progress on this and other side projects I’ll make sure to update this blog more frequently")

Post.create(title: "Ship It! Saturday Number One",
            body: "Today Launch Academy hosted an event called Ship It Saturday, a hack-a-thon centered around the idea of starting a project from scratch and deploying it within a single day. People grouped into teams or worked alone and came up with ideas for projects to make as much progress on as possible by the end of the day.
I had initially hoped to make use of one of NASA’s APIs to build some kind of Rails app taking advantage of the massive amount of data they have made available to the public. As I looked through their developer tools however I realized that there weren’t any useful tools for the NASA project which I currently find the most interesting, the Curiosity rover.
What I wanted was an API to make available the huge amount of photographs that have been captured by Curiosity, but since there doesn’t seem to be one, I decided to undertake the task myself.
My first task was to gather all of the images from NASA’s gallery into one place. Obviously downloading, storing, and hosting the vast number of photographs that have been sent back from Mars would be an immense task that I’m not particularly well equipped for, so I did the next best thing. I build a data scraping program to peruse Curiosity’s gallery site and retrieve the image URL of each and every image, along with the Martian sol (solar day on Mars) that the photo was taken, and which one of the rover’s cameras captured it.
Github repository for the data scraper
As you might imagine, the scraper took quite a while to finish collecting all of the necessary information, so while it was running I began build a simple Rails app to allow users to search through a database by Martian sol (Curiosity has been exploring for 830 Martian solar cycles at this point), and then display each photo that was taken on that sol, along with which one of its cameras captured it.
Github Repository for the Rails-based photo browser app
I didn’t end up getting everything up and running until a few hours after the end of Ship It Saturday, and it’s still not exactly ready for deployment, but it felt pretty good to come up with a plan and work all the way through an app in a single day, even if it was a relatively simple app. This was also the first Rails app I’ve built on my own without following a tutorial or guide, so I was very happy with just being able to get it working the way I wanted.
I plan on continuing to work on this project, and I would like to eventually turn it into a functioning API that other developers can use to take advantage of this huge collection (around 160,000 photos as of now) of high resolution photos of the red planet.")

Post.create(title: "The Importance of AJAX",
            body: "Over the last couple months I’ve been loving burying myself in my Ruby code and learning how to build RESTful Rails apps. I not only find Rails to be a powerful framework, but I also just find Ruby an expressive, beautiful, and fun language.
Those are things that I cannot honestly say about JavaScript. While I don’t think JavaScript is nearly as bad as some people make it out to be, I certainly understand the distaste for it, and share the sentiment. It can be ugly, syntactically confusing, and just not very expressive without spending a great deal of time studying the code.
There are a few aspects of JS however that make it, in my novice opinion, incredibly useful and vital for modern web development, even in a framework like Rails. I think perhaps the most important, which is very near ubiquitous on the modern web, is asynchronicity.
When liking a post on Facebook, favoriting a tweet, RSVPing to an event, or scrolling down a feed, a site without asynchronicity would feel dated a clunky. Features like these use AJAX (Asynchronous JavaScript And XML, although these days it is more typically JSON rather than XML) to send and retrieve data to and from a database without needing to reload the entire page. This not only helps the user not lose their place when scrolling through tweets for example, but also greatly increases the speed at which these simple requests can be processed.
While working on my final project at Launch Academy (https://scene-hub.herokuapp.com/), I decided it was important to get some practice using the asynchronous aspects of JavaScript to improve the user experience of the app. The first, relatively simple feature I decided to implement was to have the RSVP button use AJAX to RSVP a user to a concert or cancel their RSVP. This would allow a user to toggle their status without having to be redirected from the concert’s page.

While I wish I could say I’m experienced with JavaScript to come up with this functionality on my own, I used some of the resources available to me at Launch Academy to give myself a hand in implementing it. I did however do my best to study the code and try to understand what each element was doing (and why). I was also not surprised to realize that even though I didn’t write most of the JavaScript myself, getting it integrated into the rest of my Rails app wasn’t exactly an insignificant task.

Looking at Chrome’s develop tools also reveals one of the biggest advantages to using AJAX to submit a simple request like this. Whereas in the image above you can see that the AJAX request to RSVP or cancel an RSVP take an average of 60-70ms, reloading the entire page takes around 400ms. The amount of data transferred also goes from ~6kB to reload a page to ~1kB for an AJAX request. The amount of time and bandwidth saved can be even more significant with more complex pages and apps.
This was a relatively simple exercise, but I plan on spending some more time getting accustomed to integrating JavaScript into my Rails apps for modern web functionality.")

Post.create(title: "Rails vs Sinatra - Which Ruby Web Framework Should I Use?",
            body: "For the beginning Rubyist who wants to try their hand at web development, the question of which web framework to use can be a tricky one. There are several frameworks out there for Ruby, and it can be hard to know which one to use for a particular situation. Here I’ll attempt to outline some of the differences, as well as some of the similarities between two of the most popular frameworks for Ruby: Rails and Sinatra.

Introductions

If you’ve had any experience in the web development scene, Rails probably doesn’t need much of an introduction. It’s gotten pretty popular and has been used by companies like Twitter, Indiegogo, Groupon, and many more. There are also a lot of startups now using Rails primarily for their back end, while feeding that data into a more interactive front end framework like Ember or to mobile apps for iOS and Android.

Sinatra may sound less familiar if you’re new to the scene, but it’s a nifty little framework that is great for building simple apps really quickly. For this reason, it’s often used to prototype larger apps, but there are some apps out there built in Sinatra.

The Similarities

Obviously the biggest similarity between Rails and Sinatra is that they are both web frameworks written in Ruby. This means that once you’re feeling comfortable with your Ruby skills, you can most likely tackle either one of these tools. However, there is more that these two share besides the language they were built on.

For one thing, in both Rails and Sinatra it’s important for the developer to understand the parts of a web app, and what happens when a user is interacting with your site. That means that learning the basics of HTTP protocol and how a URL brings you to the correct place will help immensely before starting with either one of these frameworks. It can also be helpful to understand the principles of REST, but we’ll touch on that further when we talk about the differences between Rails and Sinatra.

There are also a lot of libraries and tools out there that have been developed by the open source Ruby community that will be vital in developing web applications. Learning about common, useful gems will be an absolute necessity whether you’re working in Rails or Sinatra. Whether you’re dealing with ActiveRecord to handle your models, Pry to debug your code, or even Sinatra and Rails themselves, open source Ruby gems will be absolutely essential to any web developer.

The Differences

Now that we’ve discussed what is common to both Rails and Sinatra, let’s talk about why a developer might choose one over the other. As you might have noticed if you browsed the lists of apps built in either framework, there are a lot more full scale web products that use Rails as their back end. That’s because Rails tends to fare better for larger apps. Because of the ‘convention over configuration’ mantra of the Rails community, it’s much easier to scale an app in Rails than in something like Sinatra.

This is mostly because Sinatra requires the developer to create a custom router which specifies each unique path that a user might visit, whereas Rails offers the resources method for its route file, which automatically creates paths for each of the CRUD actions for a model. This might sound like a point in Rails’ favor, but many developers also appreciate the freedom that Sinatra allows them. If you only have a handful of pages in your app, the conventions of Rails become less necessary. This makes it great for small apps or simple back ends that might feed into a separate front end or mobile app.

Another major difference between Rails and Sinatra is that Rails strictly adheres to the MVC pattern of separating its parts into models, views, and controllers. In this system, the models contain most of the data in an app, the views present that data to the user, and the controllers handle the exchange between model and view. In Sinatra on the other hand, a similar system is used, but rather than having discrete controllers there is typically a ‘server’ or ‘app’ file which serves as both a router and a series of controllers. This is one of the reason it is difficult to scale an app that has more than a few views in Sinatra, as organizing everything in a single file quickly gets out of control.

Conclusion

So there you have it. When it comes down to it, both Rails and Sinatra are great frameworks to work with, but the decision as to which one to use depends on your situation. If you’re building a substantial back end with a lot of data models, you’ll probably be better served by the convention and organization of Rails. If, on the other hand, you just need a few simple pages, Sinatra might offer you the freedom you’re looking for.

For more information and resources you can check out the documentation for Rails and Sinatra, as well as Rubygems.org.")
