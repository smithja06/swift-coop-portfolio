struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("when") {
            return "That could have been when the dinosaurs were on earth!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion.hasPrefix("who") {
            return "That was most likely God's doing!"
        } else if lowerQuestion.hasPrefix("what") {
            return "That would be due to the meteor!"
        } else if lowerQuestion.hasPrefix("why") {
            return "It's most likely because of the aliens"
        } else if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there! Do you have a question for me?"
        } else if lowerQuestion.hasPrefix("good") {
            if lowerQuestion.hasSuffix("morning") {
                return "Good morning! How can I help you?"
            } else if lowerQuestion.hasSuffix("afternoon") {
                return "Good afternoon! How can I be of service?"
            } else if lowerQuestion.hasSuffix("night") {
                return "Good night! Can I help you with anything before you go to sleep?"
            }
        } else {
            
            let defaultNumber = question.count % 5
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "I don't know the answer to that"
            } else if defaultNumber == 2 {
                return "Ask me again tomorrow!"
            } else if defaultNumber == 3 {
                return "I think you'll know the answer to that!"
            } else {
                return "Let me think about that one."
            }
        }
        return "I don't understand that question"
    }
}
