//
//  ViewController.swift
//  MyFirstNanoChallengeApp
//
//  Created by Alfon on 03/03/20.
//  Copyright © 2020 Alfon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var QuotesText: UILabel!
    @IBOutlet weak var HappyEmoji: UIButton!
    @IBOutlet weak var SadEmoji: UIButton!
    @IBOutlet weak var MadEmoji: UIButton!
    @IBOutlet weak var BoredEmoji: UIButton!
    @IBOutlet weak var Author: UILabel!
    @IBOutlet var background: UIView!
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var quoteBackground: UIView!
    @IBOutlet weak var emoticonContainer: UIView!
    
    var randomNumber:Int = 0
    var generatedQuotes:String = ""
    var generatedAuthor = ""
    var backgroundEmotion:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        HappyEmoji.round(corners: [.topLeft], cornerRadius: 20)
        SadEmoji.round(corners: [.topRight], cornerRadius: 20)
        MadEmoji.round(corners: [.bottomLeft], cornerRadius: 20)
        BoredEmoji.round(corners: [.bottomRight], cornerRadius: 20)
    
        quoteBackground.layer.cornerRadius = 20
        quoteBackground.layer.masksToBounds = true
        
        emoticonContainer.layer.cornerRadius = 20
        emoticonContainer.layer.masksToBounds = true
        
        let timer = Timer.scheduledTimer(timeInterval: 7, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    
     @objc func fireTimer() {
        let temp = generateRandom()
        if backgroundEmotion == 1 {
            imageBackground.fadeOut()
            imageBackground.fadeIn()
            if temp  <= 200 {
                imageBackground.image = #imageLiteral(resourceName: "alexis-antonio-EAH3N7R-Ngs-unsplash")
            } else if temp > 200 && temp <= 400 {
                imageBackground.image = #imageLiteral(resourceName: "yulia-agnis-Q7pcNosEz1k-unsplash")
            }
            else if temp > 400 && temp <= 600 {
                imageBackground.image = #imageLiteral(resourceName: "touann-gatouillat-vergos-bz0UQCgI7u8-unsplash")
            }
            else if temp > 600 && temp <= 800 {
                imageBackground.image = #imageLiteral(resourceName: "yann-allegre-9j4m-GwS4Dk-unsplash")
            }else if temp > 800 && temp <= 1000 {
                imageBackground.image = #imageLiteral(resourceName: "alexis-antonio-273_wcQPfYw-unsplash")
            }
        }else if backgroundEmotion == 2{
            imageBackground.fadeOut()
            imageBackground.fadeIn()
            
            
            if temp  <= 200 {
                imageBackground.image = #imageLiteral(resourceName: "lukasz-szmigiel-jFCViYFYcus-unsplash")
            } else if temp > 200 && temp <= 400 {
                imageBackground.image = #imageLiteral(resourceName: "casey-horner-4rDCa5hBlCs-unsplash")
            }
            else if temp > 400 && temp <= 600 {
                imageBackground.image = #imageLiteral(resourceName: "david-bruyndonckx-F_hft1Wiyj8-unsplash")
            }
            else if temp > 600 && temp <= 800 {
                imageBackground.image = #imageLiteral(resourceName: "luca-bravo-ESkw2ayO2As-unsplash")
            }else if temp > 800 && temp <= 1000 {
                imageBackground.image = #imageLiteral(resourceName: "samuel-ferrara-iecJiKe_RNg-unsplash")
            }
            
        }else if backgroundEmotion == 3{
            imageBackground.fadeOut()
            imageBackground.fadeIn()
            
            
            if temp  <= 200 {
                imageBackground.image = #imageLiteral(resourceName: "ben-white-4K2lIP0zc_k-unsplash")
            } else if temp > 200 && temp <= 400 {
                imageBackground.image = #imageLiteral(resourceName: "lidya-nada-_0aKQa9gr4s-unsplash")
            }
            else if temp > 400 && temp <= 600 {
                imageBackground.image = #imageLiteral(resourceName: "petr-sevcovic-e12wQLAjQi0-unsplash")
            }
            else if temp > 600 && temp <= 800 {
                imageBackground.image = #imageLiteral(resourceName: "kevin-koh-zibA9CZCSwc-unsplash")
            }else if temp > 800 && temp <= 1000 {
                imageBackground.image = #imageLiteral(resourceName: "guilherme-stecanella-_dH-oQF9w-Y-unsplash")
            }
            
        }else if backgroundEmotion == 4{
            imageBackground.fadeOut()
            imageBackground.fadeIn()
            
            if temp  <= 200 {
                imageBackground.image = #imageLiteral(resourceName: "darpan-dodiya-2Wa4T-n2WaU-unsplash")
            } else if temp > 200 && temp <= 400 {
                imageBackground.image = #imageLiteral(resourceName: "kristopher-roller-PC_lbSSxCZE-unsplash")
            }
            else if temp > 400 && temp <= 600 {
                imageBackground.image = #imageLiteral(resourceName: "olena-sergienko-DNCZaeuCF6U-unsplash")
            }
            else if temp > 600 && temp <= 800 {
                imageBackground.image = #imageLiteral(resourceName: "steve-halama-8Bm5IUQ387A-unsplash")
            }else if temp > 800 && temp <= 1000 {
                imageBackground.image = #imageLiteral(resourceName: "brett-patzke-pYeO_rIZ1EM-unsplash")
            }
            
        }
     }

    @IBAction func HappyAct(_ sender: Any) {
        HappyEmoji.backgroundColor = #colorLiteral(red: 0.9835138917, green: 0.9617932439, blue: 0, alpha: 1)
        SadEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        MadEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        BoredEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        backgroundEmotion = 1
        
        randomNumber = generateRandom()
        if randomNumber <= 50 {
            generatedQuotes = "The greatest happiness you can have is knowing that you do not necessarily require happiness."
            generatedAuthor = "– William Saroyan"
        }else if (randomNumber > 50 && randomNumber <= 100){
            generatedQuotes = "There is only one happiness in this life, to love and be loved."
            generatedAuthor = "– George Sand"
        }else if (randomNumber > 100 && randomNumber <= 150){
            generatedQuotes = "Happiness is distraction from the human tragedy."
            generatedAuthor = "– J.M. Reinoso"
        }else if (randomNumber > 150 && randomNumber <= 200){
            generatedQuotes = "Real happiness is not of temporary enjoyment, but is so interwoven with the future that it blesses for ever."
            generatedAuthor = "– James Lendall Basford"
        }else if (randomNumber > 200 && randomNumber <= 250){
            generatedQuotes = "The foolish man seeks happiness in the distance, the wise grows it under his feet."
            generatedAuthor = "– James Oppenheim"
        }else if (randomNumber > 250 && randomNumber <= 300){
            generatedQuotes = "Who is the happiest of men? He who values the merits of others, and in their pleasure takes joy, even as though it were his own."
            generatedAuthor = "– Johann Wolfgang von Goethe"
        }else if (randomNumber > 300 && randomNumber <= 350){
            generatedQuotes = "You cannot protect yourself from sadness without protecting yourself from happiness."
            generatedAuthor = "– Jonathan Safran Foer"
        }else if (randomNumber > 350 && randomNumber <= 400){
            generatedQuotes = "He who lives in harmony with himself lives in harmony with the universe."
            generatedAuthor = "– Marcus Aurelius"
        }else if (randomNumber > 400 && randomNumber <= 450){
            generatedQuotes = "Happiness is not a state to arrive at, but a manner of traveling."
            generatedAuthor = "– Margaret Lee Runbeck"
        }else if (randomNumber > 450 && randomNumber <= 500){
            generatedQuotes = "Happiness is a well-balanced combination of love, labour, and luck."
            generatedAuthor = "– Mary Wilson Little"
        }else if (randomNumber > 500 && randomNumber <= 550){
            generatedQuotes = "Ups and downs. Victories and defeats. Sadness and happiness. That’s the best kind of life."
            generatedAuthor = "– Maxime Lagacé"
        }else if (randomNumber > 550 && randomNumber <= 600){
            generatedQuotes = "Many things can make you miserable for weeks; few can bring you a whole day of happiness."
            generatedAuthor = "– Mignon McLaughlin"
        }else if (randomNumber > 600 && randomNumber <= 650){
            generatedQuotes = "Those who can laugh without cause have either found the true meaning of happiness or have gone stark raving mad."
            generatedAuthor = "– Norm Papernick"
        }else if (randomNumber > 650 && randomNumber <= 700){
            generatedQuotes = "Happiness is the natural flower of duty."
            generatedAuthor = "– Phillips Brooks"
        }else if (randomNumber > 700 && randomNumber <= 750){
            generatedQuotes = "Most people would rather be certain they’re miserable, than risk being happy."
            generatedAuthor = "– Robert Anthony"
        }else if (randomNumber > 750 && randomNumber <= 800){
            generatedQuotes = "Happiness is not being pained in body or troubled in mind."
            generatedAuthor = "– Thomas Jefferson"
        }else if (randomNumber > 800 && randomNumber <= 850){
            generatedQuotes = "The secret of happiness is to find a congenial monotony."
            generatedAuthor = "– V.S. Pritchett"
        }else if (randomNumber > 850 && randomNumber <= 900){
            generatedQuotes = "Happiness is a function of accepting what is."
            generatedAuthor = "– Werner Erhard"
        }else if (randomNumber > 900 && randomNumber <= 950){
            generatedQuotes = "Happiness is the meaning and the purpose of life, the whole aim and end of human existence."
            generatedAuthor = "– Aristotle"
        }else if (randomNumber > 950 && randomNumber <= 1000){
            generatedQuotes = "Happiness lies in the joy of achievement and the thrill of creative effort."
            generatedAuthor = "– Franklin Roosevelt"
        }
        
        QuotesText.fadeOut()
        QuotesText.fadeIn()
        Author.fadeOut()
        Author.fadeIn()
        
        QuotesText.text = "\"" + generatedQuotes + "\""
        Author.text = generatedAuthor
    }
    
    
    
    @IBAction func MadAct(_ sender: Any) {
        MadEmoji.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        SadEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        HappyEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        BoredEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        randomNumber = generateRandom()
        
        backgroundEmotion = 2
        
        if randomNumber <= 50 {
            generatedQuotes = "If you are patient in one moment of anger, you will escape a hundred days of sorrow."
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 50 && randomNumber <= 100){
            generatedQuotes = "A hand ready to hit, may cause you great trouble."
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 100 && randomNumber <= 150){
            generatedQuotes = "A man in a passion, rides a mad horse."
            generatedAuthor = "- Ben Franklin"
        }else if (randomNumber > 150 && randomNumber <= 200){
            generatedQuotes = "Anger ventilated often hurries toward forgiveness; and concealed often hardens into revenge."
            generatedAuthor = "- Edward G. Bulwer-Lytton"
        }else if (randomNumber > 200 && randomNumber <= 250){
            generatedQuotes = "He who angers you conquers you."
            generatedAuthor = "- Elizabeth Kenny"
        }else if (randomNumber > 250 && randomNumber <= 300){
            generatedQuotes = "Fire in the heart sends smoke into the head."
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 300 && randomNumber <= 350){
            generatedQuotes = "Anger is often more hurtful than the injury that caused it."
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 350 && randomNumber <= 400){
            generatedQuotes = "A quick temper will make a fool of you soon enough."
            generatedAuthor = "- Bruce Lee"
        }else if (randomNumber > 400 && randomNumber <= 450){
            generatedQuotes = "Anger is a wind which blows out the lamp of the mind."
            generatedAuthor = "- Robert Green Ingersoll"
        }else if (randomNumber > 450 && randomNumber <= 500){
            generatedQuotes = "Anger is one letter short of danger."
            generatedAuthor = "- Eleanor Roosevelt"
        }else if (randomNumber > 500 && randomNumber <= 550){
            generatedQuotes = "Where there is anger, there is always pain underneath."
            generatedAuthor = "- Eckhart Tolle"
        }else if (randomNumber > 550 && randomNumber <= 600){
            generatedQuotes = "Anger makes you smaller, while forgiveness forces you to grow beyond what you are."
            generatedAuthor = "- Cherie Carter-Scott"
        }else if (randomNumber > 600 && randomNumber <= 650){
            generatedQuotes = "Anger is an acid that can do more harm to the vessel in which it is stored than to anything on which it is poured."
            generatedAuthor = "- Baptist Beacon"
        }else if (randomNumber > 650 && randomNumber <= 700){
            generatedQuotes = "Bitterness is like cancer. It eats upon the host. But anger is like fire. It burns it all clean."
            generatedAuthor = "- Maya Angelou"
        }else if (randomNumber > 700 && randomNumber <= 750){
            generatedQuotes = "Beware the fury of a patient man."
            generatedAuthor = "- Publilius Syrus"
        }else if (randomNumber > 750 && randomNumber <= 800){
            generatedQuotes = "Anger dwells only in the bosom of fools."
            generatedAuthor = "- Albert Einstein"
        }else if (randomNumber > 800 && randomNumber <= 850){
            generatedQuotes = "The sharpest sword is a word spoken in wrath."
            generatedAuthor = "- Sidharta Gautama"
        }else if (randomNumber > 850 && randomNumber <= 900){
            generatedQuotes = "Speak when you are angry and you will make the best speech you will ever regret."
            generatedAuthor = "- Ambrose Bierce"
        }else if (randomNumber > 900 && randomNumber <= 950){
            generatedQuotes = "There are two things a person should never be angry at, what they can help, and what they cannot."
            generatedAuthor = "- Plato"
        }else if (randomNumber > 950 && randomNumber <= 1000){
            generatedQuotes = "The more anger towards the past you carry in your heart, the less capable you are of loving in the present."
            generatedAuthor = "- Barbara De Angelis"
        }
        
        QuotesText.fadeOut()
        QuotesText.fadeIn()
        Author.fadeOut()
        Author.fadeIn()
        
        QuotesText.text = "\"" + generatedQuotes + "\""
        Author.text = generatedAuthor
        
    }
    
    @IBAction func SadAct(_ sender: Any) {
        SadEmoji.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        HappyEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        MadEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        BoredEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        randomNumber = generateRandom()
        backgroundEmotion = 3
           
        if randomNumber <= 50 {
            generatedQuotes = "What brings us to tears, will lead us to grace. Our pain is never wasted."
            generatedAuthor = "- Bob Goff"
        }else if (randomNumber > 50 && randomNumber <= 100){
            generatedQuotes = "Tears come from the heart and not from the brain."
            generatedAuthor = "- Leonardo da Vinci"
        }else if (randomNumber > 100 && randomNumber <= 150){
            generatedQuotes = "Sometimes it takes sadness to know happiness, noise to appreciate silence and absence to value presence."
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 150 && randomNumber <= 200){
            generatedQuotes = "When you’re happy you enjoy the music, but when you’re sad you understand the lyrics."
            generatedAuthor = "- Frank Ocean"
        }else if (randomNumber > 200 && randomNumber <= 250){
            generatedQuotes = "Sometimes you laugh because you’ve got no more room for crying."
            generatedAuthor = "- Terry Pratchett"
        }else if (randomNumber > 250 && randomNumber <= 300){
            generatedQuotes = "Tears are far more beautiful than anything that you have with you, because tears come from the overflow of your being."
            generatedAuthor = "- Osho"
        }else if (randomNumber > 300 && randomNumber <= 350){
            generatedQuotes = "Perhaps I know best why it is man alone who laughs; he alone suffers so deeply that he had to invent laughter."
            generatedAuthor = "Friedrich Nietzsche"
        }else if (randomNumber > 350 && randomNumber <= 400){
            generatedQuotes = "Woman tears come from their feelings, Man tears come from the bottom of their heart"
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 400 && randomNumber <= 450){
            generatedQuotes = "Every living man has the right to cry apart from their gender"
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 450 && randomNumber <= 500){
            generatedQuotes = "I always like walking in the rain, so no one can see me crying."
            generatedAuthor = "- Charlie Chaplin"
        }else if (randomNumber > 500 && randomNumber <= 550){
            generatedQuotes = "All man’s miseries stem from his inability to sit quietly in a room and do nothing."
            generatedAuthor = "- Blaise Pascal"
        }else if (randomNumber > 550 && randomNumber <= 600){
            generatedQuotes = "Behind every sweet smile, there is a bitter sadness that no one can ever see and feel."
            generatedAuthor = "- Tupac"
        }else if (randomNumber > 600 && randomNumber <= 650){
            generatedQuotes = "When you feel like you’ve had it up to here, and you’re mad enough to scream, but you’re sad enough to tear, that’s rock bottom."
            generatedAuthor = "- Eminem"
        }else if (randomNumber > 650 && randomNumber <= 700){
            generatedQuotes = "The colder the winter, the warmer the spring. The deeper the sorrow, the more our hearts sing."
            generatedAuthor = "- Bambi, Disney"
        }else if (randomNumber > 700 && randomNumber <= 750){
            generatedQuotes = "I used to think the worst thing in life was to end up all alone, it’s not. The worst thing in life is to end up with people who make you feel alone."
            generatedAuthor = "- Robin Williams"
        }else if (randomNumber > 750 && randomNumber <= 800){
            generatedQuotes = "People cry, not because they’re weak. It’s because they’ve been strong for too long."
            generatedAuthor = "- Johnny Dep"
        }else if (randomNumber > 800 && randomNumber <= 850){
            generatedQuotes = "Never blame anyone in your life. Good people give you happiness. Bad people give you experience. Worst people give you a lesson. And best people give you memories."
            generatedAuthor = "- Zig Ziglar"
        }else if (randomNumber > 850 && randomNumber <= 900){
            generatedQuotes = "Feeling down, lost, confused, angry, jealous are all parts of the human condition. Don’t fight them. Understand them. Accept them. Love them and go beyond them."
            generatedAuthor = "- Maxime Lagacé"
        }else if (randomNumber > 900 && randomNumber <= 950){
            generatedQuotes = "Don’t grieve. Anything you lose comes round in another form."
            generatedAuthor = "- Rumi"
        }else if (randomNumber > 950 && randomNumber <= 1000){
            generatedQuotes = "Suffering is a gift; in its hidden mercy."
            generatedAuthor = "- Rumi"
        }
        
        QuotesText.fadeOut()
        QuotesText.fadeIn()
        Author.fadeOut()
        Author.fadeIn()
        
        QuotesText.text = "\"" + generatedQuotes + "\""
        Author.text = generatedAuthor
    }
    
    @IBAction func BoredAct(_ sender: Any) {
        BoredEmoji.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        HappyEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        MadEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        SadEmoji.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        randomNumber = generateRandom()
        
        backgroundEmotion = 4
            
        
        if randomNumber <= 50 {
            generatedQuotes = "Never accept the world as it appears to be, dare to see it for what it could be"
            generatedAuthor = "- Harold Winston (Overwatch)"
        }else if (randomNumber > 50 && randomNumber <= 100){
            generatedQuotes = "Imagination is the essence of discovery"
            generatedAuthor = "- Winston (Overwatch)"
        }else if (randomNumber > 100 && randomNumber <= 150){
            generatedQuotes = "I believe that the only courage anybody ever needs is the courage to follow your own dreams."
            generatedAuthor = "- Oprah Winfrey"
        }else if (randomNumber > 150 && randomNumber <= 200){
            generatedQuotes = "No masterpiece was ever created by a lazy artist."
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 200 && randomNumber <= 250){
            generatedQuotes = "What's the point of being alive if you don't at least try to do something remarkable."
            generatedAuthor = "- Unknown"
        }else if (randomNumber > 250 && randomNumber <= 300){
            generatedQuotes = "Life is not about finding yourself. Life is about creating yourself."
            generatedAuthor = "- Lolly Daskal"
        }else if (randomNumber > 300 && randomNumber <= 350){
            generatedQuotes = "Innovation distinguishes between a leader and a follower."
            generatedAuthor = "- Steve Jobs"
        }else if (randomNumber > 350 && randomNumber <= 400){
            generatedQuotes = "People often say that motivation doesn't last. Well, neither does bathing--that's why we recommend it daily."
            generatedAuthor = "Zig Ziglar"
        }else if (randomNumber > 400 && randomNumber <= 450){
            generatedQuotes = "I find that when you have a real interest in life and a curious life, that sleep is not the most important thing."
            generatedAuthor = "- Martha Stewart"
        }else if (randomNumber > 450 && randomNumber <= 500){
            generatedQuotes = "The road to success and the road to failure are almost exactly the same."
            generatedAuthor = "- Colin R. Davis"
        }else if (randomNumber > 500 && randomNumber <= 550){
            generatedQuotes = "As we look ahead into the next century, leaders will be those who empower others."
            generatedAuthor = "- Bill Gates"
        }else if (randomNumber > 550 && randomNumber <= 600){
            generatedQuotes = "The successful warrior is the average man, with laser-like focus."
            generatedAuthor = "Bruce Lee"
        }else if (randomNumber > 600 && randomNumber <= 650){
            generatedQuotes = "There is no traffic jam along the extra mile."
            generatedAuthor = "- Roger Staubach"
        }else if (randomNumber > 650 && randomNumber <= 700){
            generatedQuotes = "Don't let the fear of losing be greater than the excitement of winning."
            generatedAuthor = "- Robert Kiyosaki"
        }else if (randomNumber > 700 && randomNumber <= 750){
            generatedQuotes = "Two roads diverged in a wood and I  took the one less traveled by, and that made all the difference."
            generatedAuthor = "- Robert Frost"
        }else if (randomNumber > 750 && randomNumber <= 800){
            generatedQuotes = "You must expect great things of yourself before you can do them."
            generatedAuthor = "- Michael Jordan"
        }else if (randomNumber > 800 && randomNumber <= 850){
            generatedQuotes = "Motivation is what gets you started. Habit is what keeps you going."
            generatedAuthor = "- Jim Ryun"
        }else if (randomNumber > 850 && randomNumber <= 900){
            generatedQuotes = "People rarely succeed unless they have fun in what they are doing."
            generatedAuthor = "- Dale Carnegie"
        }else if (randomNumber > 900 && randomNumber <= 950){
            generatedQuotes = "To accomplish great things, we must not only act, but also dream, not only plan, but also believe."
            generatedAuthor = "- Anatole France"
        }else if (randomNumber > 950 && randomNumber <= 1000){
            generatedQuotes = "Be miserable. Or motivate yourself. Whatever has to be done, it's always your choice."
            generatedAuthor = "- Wayne Dyer"
        }
               
        QuotesText.fadeOut()
        QuotesText.fadeIn()
        Author.fadeOut()
        Author.fadeIn()
        
        QuotesText.text = "\"" + generatedQuotes + "\""
        Author.text = generatedAuthor
    }
    
    func generateRandom() -> Int{
        return Int.random(in: 0 ... 1000)
    }
    
    
    
}

