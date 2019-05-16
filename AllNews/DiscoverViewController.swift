//
//  DiscoverViewController.swift
//  AllNews
//
//  Created by Jakob Plotts on 4/29/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import Foundation
import UIKit


// Controller script for the discovery article section which aims to deliver content that differs from what the user is typically used to
class DiscoverViewController: UITableViewController {
    // Pre-populated data set of articles that I put together by scouring the web for articles
    // All articles are credited and sourced below
    let data = [
        // Source: https://hackernoon.com/im-harvesting-credit-card-numbers-and-passwords-from-your-site-here-s-how-9a8cb347c5b5
        Article(title: "I’m harvesting credit card numbers and passwords from your site. Here’s how.", author: "David Gilbertson", date: Date(), body: "The following is a true story. Or maybe it’s just based on a true story. Perhaps it’s not true at all.\n\nIt’s been a frantic week of security scares — it seems like every day there’s a new vulnerability. It’s been a real struggle for me personally to pretend like I understand what’s going on when asked about it by family members.\n\nSeeing people close to me get all flustered at the prospect of being “powned” has really put things in perspective for me.\n\nSo, it is with a heavy heart that I’ve decided to come clean and tell you all how I’ve been stealing usernames, passwords and credit card numbers from your sites for the past few years.\n\nThe malicious code itself is very simple, it does its best work when it runs on a page that meets the following criteria:\n\n• The page has a <form>\n\n• an element matches input[type='password'] or name='cardnumber' or name='cvc' etc.\n\n• The page contains words like 'credit card', 'checkout', 'login', 'password' etc.\n\nThen, when there’s a blur event on a password/credit card field, or a form submit event is heard, my code:\n\n• Takes data from all form fields (document.forms.forEach(…)) on the page\n\n• Grabs document.cookie\n\n• It turns all that into a random looking string const payload = btoa(JSON.stringify(sensitiveUserData))\n\n• Then sends it off to `https://legit-analytics.com?q=${payload}` (not the real domain, of course)\n\nIn short, if it looks like data that might be even remotely valuable to me, I send it off to my server.", banner: #imageLiteral(resourceName: "DiscoveredArticle1"), theme: UIColor(named: "ColorPrimary1")!),
        // Source: https://hackernoon.com/learn-blockchains-by-building-one-117428612f46
        Article(title: "Learn Blockchains by Building One", author: "Daniel van Flymen", date: Date(), body: "You’re here because, like me, you’re psyched about the rise of Cryptocurrencies. And you want to know how Blockchains work—the fundamental technology behind them.\n\nBut understanding Blockchains isn’t easy—or at least wasn’t for me. I trudged through dense videos, followed porous tutorials, and dealt with the amplified frustration of too few examples.\n\nI like learning by doing. It forces me to deal with the subject matter at a code level, which gets it sticking. If you do the same, at the end of this guide you’ll have a functioning Blockchain with a solid grasp of how they work.\n\n• Before you get started… •\n\nRemember that a blockchain is an immutable, sequential chain of records called Blocks. They can contain transactions, files or any data you like, really. But the important thing is that they’re chained together using hashes.\n\nWho is this guide aimed at? You should be comfy reading and writing some basic Python, as well as have some understanding of how HTTP requests work, since we’ll be talking to our Blockchain over HTTP.\n\nWhat do I need? Make sure that Python 3.6+ (along with pip) is installed. You’ll also need to install Flask and the wonderful Requests library:\n\npip install Flask==0.12.2 requests==2.18.4\n\nOh, you’ll also need an HTTP Client, like Postman or cURL. But anything will do.", banner: #imageLiteral(resourceName: "DiscoveredArticle2"), theme: UIColor(named: "ColorPrimary2")!),
        // Source: https://medium.freecodecamp.org/how-to-think-like-a-programmer-lessons-in-problem-solving-d1d8bf1de7d2
        Article(title: "How to think like a programmer — lessons in problem solving", author: "Richard Reis", date: Date(), body: "If you’re interested in programming, you may well have seen this quote before:\n\n'Everyone in this country should learn to program a computer, because it teaches you to think.' — Steve Jobs\n\nYou probably also wondered what does it mean, exactly, to think like a programmer? And how do you do it??\n\nEssentially, it’s all about a more effective way for problem solving.\n\nIn this post, my goal is to teach you that way.\n\nBy the end of it, you’ll know exactly what steps to take to be a better problem-solver.\n\n• Why is this important? •\n\nProblem solving is the meta-skill.\n\nWe all have problems. Big and small. How we deal with them is sometimes, well…pretty random.\n\nUnless you have a system, this is probably how you “solve” problems (which is what I did when I started coding):\n\n1. Try a solution.\n\n2. If that doesn’t work, try another one.\n\n3. If that doesn’t work, repeat step 2 until you luck out.\n\nLook, sometimes you luck out. But that is the worst way to solve problems! And it’s a huge, huge waste of time.\n\nThe best way involves a) having a framework and b) practicing it.", banner: #imageLiteral(resourceName: "DiscoveredArticle3"), theme: UIColor(named: "ColorPrimary3")!),
        // Source: https://medium.freecodecamp.org/the-main-pillars-of-learning-programming-and-why-beginners-should-master-them-e04245c17c56
        Article(title: "The main pillars of learning programming — and why beginners should master them.", author: "Rainer Hahnekamp", date: Date(), body: "I have been programming for more than 20 years. During that time, I’ve had the pleasure to work with many people, from whom I learned a lot. I’ve also worked with many students, coming fresh from university, with whom I had to take on the role of a teacher or mentor.\n\nLately, I have been involved as a trainer in a program that teaches coding to absolute beginners.\n\nLearning how to program is hard. I often find that university courses and bootcamps miss important aspects of programming and take poor approaches to teaching rookies.\n\nI want to share the five basic pillars I believe a successful programming course should build upon. As always, I am addressing the context of mainstream web applications.\n\nA rookie’s goal is to master the fundamentals of programming and to understand the importance of libraries and frameworks.\n\nAdvanced topics such as the cloud, operations in general, or build tools should not be part of the curriculum. I am also skeptical when it comes to Design Patterns. They presume experience that beginners never have.\n\nSo let’s look at where new programmers should start.", banner: #imageLiteral(resourceName: "DiscoveredArticle4"), theme: UIColor(named: "ColorPrimary4")!),
        // Source: https://hackernoon.com/how-not-to-be-a-mediocre-developer-c59a49f97fc5
        Article(title: "How not to be a mediocre developer!", author: "Dushyant Sabharwal", date: Date(), body: "• Write more code •\n\nIf you want to get better at something then you have to spend time doing that thing, there is no other way sadly. No matter how many articles you read, how many times you read the docs, you will not improve unless you put your hands and mind in action. That design pattern which seemed hard to implement at the start will seem like a cake walk after you have practiced it’s use in multiple contexts.\n\n• Incorporate tests •\n\nWhen I first started writing tests for my own code, I was amazed to see the mindset I was lacking for writing good tests. Writing tests will enable you to look at your code the way you did not imagine at first because when coming up with tests you have to think about how can this thing break and you realise you were doing too many things in that function you wrote and it might be better to split into multiple functions because it’s hard to come up with a test for a function which does multiple things.", banner: #imageLiteral(resourceName: "DiscoveredArticle5"), theme: UIColor(named: "ColorPrimary1")!),
        // Source: https://medium.com/@benbob/what-i-learned-from-working-for-both-bill-gates-and-steve-jobs-f0c04e1e5160
        Article(title: "What I Learned Working for Both Bill Gates and Steve Jobs", author: "Ben Fathi", date: Date(), body: "Warning: I didn’t understand any of this as I was living through it. You won’t, either, when it happens to you.\n\nIt would be fair to say that I’m proud of my thirty five year career in the computer industry. I’ve had the pleasure of working with thousands of brilliant people and, thankfully, have learned a little bit from each of them. I was once a brash young engineer at NeXT Computer and, many years later, a Corporate Vice President at Microsoft. In a sense, two of the most important lessons I ever learned, I learned from Steve Jobs and Bill Gates.\n\nI was a sophomore in college before I took my first computer science class, at the recommendation of an uncle who thought: “This computer stuff is gonna be big.” I was studying psychology at the time. I have no idea why. It was the best I could think of for a major when I entered college. I was set to graduate at seventeen, much too young to know what I wanted to do with my life.\n\nI was breezing through college and completely bored with Psychology. It seemed like mental masturbation: just putting labels on people and on overlapping sets of vague symptoms. The fact that a single mental patient, when visited by five psychologists, will walk away with six diagnoses, is sufficient proof that psychology is more an art than a science. In the midst of all this, my first computer science class was a revelation.\n\nWhat? You mean there’s only one right answer to the problem? You mean the computer will do exactly what I tell it to do? And if the code doesn’t work, the problem is likely to be my own damn fault? Fuck, yeah! Sign me up!", banner: #imageLiteral(resourceName: "DiscoveredArticle6"), theme: UIColor(named: "ColorPrimary2")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Forcefully set the title of this screen
        title = "Discover Content"
    }
    
    // Change the status bar to white so it shows better on the dark background
    // Tutorial Help: https://www.ioscreator.com/tutorials/change-color-status-bar-ios-tutorial
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    // Functions to populate the table view with tappable articles from the above set of data
    // Created with the aid of the material from the course
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else {
            fatalError("No cell available")
        }
        
        // Pass each article to the controller script for each thumbnail so that this data can eventually be passed to the article viewer when tapped
        cell.thisArticle = data[indexPath.row]
        
        // Set the thumbnail image and title for the article (preview view)
        cell.articleThumbnail.setTitle(cell.thisArticle.title, for: UIControl.State.normal) // Sets the default title for the button (fix found from: https://stackoverflow.com/questions/39203683/uibutton-text-content-keeps-resetting-every-second-update)
        cell.BgImageView.image = cell.thisArticle.banner
        
        return cell
    }
}
