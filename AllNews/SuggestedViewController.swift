//
//  SuggestedViewController.swift
//  AllNews
//
//  Created by Jakob Plotts on 4/29/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import Foundation
import UIKit


// Article data point object that holds all the information necessary to populate the article viewer screen when selected
// Only needed declared once so I chose here
struct Article {
    let title: String
    let author: String
    let date: Date
    let body: String
    let banner: UIImage
    let theme: UIColor
}

// Controller script for the suggestion article section which aims to deliver content that is similar to what the user is typically used to
class SuggestedViewController: UITableViewController {
    // Pre-populated data set of articles that I put together by scouring the web for articles
    // All articles are credited and sourced below
    let data = [
        // Source: https://www.fastcompany.com/3058237/how-to-design-happiness
        Article(title: "How To Design Happiness", author: "Mark Wilson", date: Date(), body: "Design, at its heart, is about solving problems. That’s why it’s so easy to talk to designers. They can explain exactly how their interface is built to help you navigate through your phone, or how a device was shaped to make it possible for mass manufacturing on the assembly line.\n\nBut over the course of hundreds of conversations with designers, I’ve begun to wonder: If most people’s goal is to live a happy life, why did I never hear designers explain how they’d built something to make me happy?\n\nAt SXSW, I moderated an event called Designing Happiness. Its experts included Bruce Vaughn, former chief creative exec with Disney Imagineering; Gabby Etrog Cohen, senior vice president of PR and brand strategy at SoulCycle; and Randall Stone, director of experience innovation at Lippincott. All three brands strive to create happy experiences, not as an afterthought, but as the first step in what they do. It is an approach that’s paid huge dividends for each company.\n\n• Happiness Is Mostly The Anticipation Of An Event and Memory Of It •\n\n'Ask yourself whether you are happy, and you cease to be so,' said the philosopher John Stuart Mill. It’s a paradox at the heart of happiness. We are hardwired to enjoy the anticipation of a joyous event, and savor the memory. But in that actual moment of an experience? It can be hard to tell.", banner: #imageLiteral(resourceName: "SuggestedArticle1"), theme: UIColor(named: "ColorPrimary1")!),
        // Source: https://library.gv.com/why-good-storytelling-helps-you-design-great-products-148c9bbc7404
        Article(title: "Why good storytelling helps you design great products", author: "Braden Kowitz", date: Date(), body: "One of the biggest flubs that product teams make is confusing designs that look great with designs that actually work well. It’s a simple mistake, but it can have grave consequences: If your product doesn’t work well, no one will even care how it looks, after all.\n\nThe best way I’ve found to get around this confusion is a technique called story-centered design. The idea is to create a series of narrative use-cases for your product that illustrate every step in the user’s journey through it. I’ve used this technique with dozens of startups and it always helps teams move past the surface visual details to make better decisions on what really matters: how their product finally works.\n\n• Designs shouldn’t be blueprints •\n\nI’ve observed that teams often like to walk through UI designs as they would a blueprint – showing where each element belongs on the plan. Each screen shows how the product might look in a different situation, but the screens are not connected in any way. The problem is that when designs are presented this way, you’re only building an understanding of how the product looks. You’re not focusing on how the product works, and you’re not simulating how customers interact with it. So when teams critique designs as blueprints, it severely limits their ability to reason through the interactivity of the product.\n\nThe best product designers practice story-centered design. They begin by crafting stories that show how customers interact with a product, and only after they’ve accomplished that do they design screens as a way to tell that story of interaction.", banner: #imageLiteral(resourceName: "SuggestedArticle2"), theme: UIColor(named: "ColorPrimary2")!),
        // Source: https://medium.com/the-year-of-the-looking-glass/8-unintuitive-lessons-on-being-a-designer-ca7e97a572ee
        Article(title: "Unintuitive Lessons on Being a Designer", author: "Julie Zhuo", date: Date(), body: "I sometimes joke that everything I have ever learned about design, I learned from my first job. Nowadays, this first job has extended to nearly ten years, its soul consistent even as its shape unfurls in depths and colors I could never have imagined in the beginning.\n\nThough I’ve always been an obsessive journaler, this year, I am particularly reflective. What a decade. What a place to have learned the things I have learned. I have had the privilege of working with the best of the best. I have had them show me, teach me, change me.\n\nAnd change — there is nothing that feels so human as realizing that who we are today is not who we were yesterday, and will not be who we are tomorrow. It is this process of looking back that I savor like a sweet-toother with a prize-winning pastry. I can still crisply recall the ways I used to think, the views I used to hold, and see how they have morphed through the years, sometimes slowly, sometimes as swift and suddenly as a storm.\n\nThis list is certain to be outdated — and perhaps contradicted — in another ten years. If you are on the same journey, I hope these lessons will help you.\n\nOf everything I believe, this goes deepest to my core: we can all be better. And so we should be.", banner: #imageLiteral(resourceName: "SuggestedArticle3"), theme: UIColor(named: "ColorPrimary3")!),
        // Source: https://uxplanet.org/microinteractions-the-secret-to-great-app-design-4cfe70fbaccf
        Article(title: "Microinteractions: The Secret of Great App Design", author: "Nick Babich", date: Date(), body: "The best products do two things well: features and details. Features are what draw people to your product. Details are what keep them there. And details are what actually make our app stand out from our competition.\n\nMicrointeractions are one of the best techniques for giving delightful feedback.\n\nAll roads lead to a human-centered design approach, where the user is the prime focus. Often considered accessory or secondary, microinteractions actually create a feeling of well-being once they are discovered by users. As a designer, recognizing the invisibility of microinteractions is just as important as designing them. You have to create something that feels human and accomplishes a task.\n\n• What is a Microinteraction Anyway? •\n\nMicrointeractions are the contained product moments that do one small task.\n\nAs first described in Dan Saffer’s book Microinteractions, these tiny details typically serve these essential functions:\n\n• Communicate feedback or the result of an action.\n\n• Accomplish an individual task.\n\n• Enhance the sense of direct manipulation.\n\n• Help users visualize the results of their actions and prevent errors.", banner: #imageLiteral(resourceName: "SuggestedArticle4"), theme: UIColor(named: "ColorPrimary4")!),
        // Source: https://brandfolder.com/blog/5-ways-to-use-design-thinking-in-your-daily-routine/
        Article(title: "5 ways to use Design Thinking in your daily routine", author: " Michelle Polizzi", date: Date(), body: "What do the iMac computer, the Polaroid camera, and the Model T have in common?\n\nThey’re the results of design thinking, a problem solving technique that combines logic, intuition and systematic reasoning to develop long-term solutions.\n\nThis strategy isn’t limited just to designers; In fact, we think everyone can learn to master design thinking.\n\nTo start you on the path to becoming a better problem solver, here are 5 simple, yet effective tips for how to use design thinking in your daily life.\n\n1. Visualize Your Problem\n\nWhether you’re solving critical global problems or tackling micro-level projects, visualization reveals key themes and patterns.\n\nVenn diagrams, flow charts, and graphs help you identify each moving part and draw intricate conclusions between them.\n\nThe ability to discover patterns helps creative thinkers better interpret nuances in data and trends.", banner: #imageLiteral(resourceName: "SuggestedArticle5"), theme: UIColor(named: "ColorPrimary1")!),
        // Source: https://www.smashingmagazine.com/2016/03/how-designers-can-push-their-creations-into-the-real-world/
        Article(title: "From Fledgling To Founder: How Designers Can Push Their Creations Into The Real World", author: "Mathias Jakobsen", date: Date(), body: "The idea that designers are bound to be servants of other people’s and companies’ products is extremely pervasive. Sure, you may build your own design agency but, in the end, that agency is simply a collective effort to serve someone else. From my perspective, though, the world is waking up to the idea that designers can be founders of a product and not just create the beautiful wrapping around some engineering core.\n\nA recent study by Boston’s Design Management Institute showed that design-driven businesses have outperformed the Standard & Poor’s 500 by an astounding 228% over the past 10 years. These were companies that had design embedded within the company’s organizational structure, design leadership present at senior levels, and a commitment to design’s use as an innovation resource. The list of qualifying companies included traditional mainstays like Ford, Coca-Cola, Procter & Gamble, and Disney, but also tech-heavy brands like Apple, IBM and Intuit.\n\nWith design-centered businesses outperforming others, and the growing need for more design leaders and companies with design at their core, we created the Blueprint, a collaborative open source educational framework which emphasizes the concept of designer founderism. Building on processes like Lean Startup, the Blueprint is structured to be applicable to both large companies and designers looking to create their own startups.", banner: #imageLiteral(resourceName: "SuggestedArticle6"), theme: UIColor(named: "ColorPrimary2")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Forcefully set the title of this screen
        title = "Suggested Content"
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
