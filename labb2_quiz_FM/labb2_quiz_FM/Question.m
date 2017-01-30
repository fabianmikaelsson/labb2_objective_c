//
//  Question.m
//  labb2_quiz_FM
//
//  Created by Fabian Mikaelsson on 2017-01-29.
//  Copyright © 2017 Fabian Mikaelsson. All rights reserved.
//

#import "Question.h"

@interface Question ()

@property (nonatomic) NSString *question;
@property (nonatomic) NSArray *answers;

@end

@implementation Question

+ (Question*) newQuestion:(NSString*)question correctAnswer:(NSString*)answer incorrectAnswer:(NSString*)incorrectAnswer1 incorrectAnswer:(NSString*)incorrectAnswer2 incorrectAnswer:(NSString*)incorrectAnswer3 {
    Question *newQuestion = [[Question alloc] init];
    newQuestion.question = question;
    newQuestion.answers = @[answer, incorrectAnswer1, incorrectAnswer2, incorrectAnswer3];
    return newQuestion;
}

- (NSString*)getQuestion {
    return self.question;
}

- (NSArray*)getAnswers {
    return self.answers;
}

- (NSString*)getCorrectAnswer {
    return self.answers[0];
}

+ (NSMutableArray*)generateQuestions {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    [array addObject:[Question newQuestion:@"Vad kallas sylt som är en blandning av hallon och blåbär?"
                           correctAnswer:@"Drottningsylt"
                           incorrectAnswer:@"Baronsylt"
                           incorrectAnswer:@"Prinsessylt"
                           incorrectAnswer:@"Greveinnesylt"]];
    
    [array addObject:[Question newQuestion:@"Vad heter pappan i familjen Flinta?"
                             correctAnswer:@"FRED"
                           incorrectAnswer:@"Sten"
                           incorrectAnswer:@"Ben"
                           incorrectAnswer:@"Åke"]];
    
    [array addObject:[Question newQuestion:@"Vem av följande är Robin Hoods kumpaner?"
                             correctAnswer:@"Broder Tuck"
                           incorrectAnswer:@"Fader Ralph"
                           incorrectAnswer:@"Moder Teresa"
                           incorrectAnswer:@"Syster Yster"]];
    
    [array addObject:[Question newQuestion:@"Vilket träd är INTE ett barrträd?"
                             correctAnswer:@"Lind"
                           incorrectAnswer:@"Lärk"
                           incorrectAnswer:@"Cypress"
                           incorrectAnswer:@"Gran"]];
    
    [array addObject:[Question newQuestion:@"Till vilket land hör öarna Mykonos och Santorini?"
                             correctAnswer:@"Grekland"
                           incorrectAnswer:@"Turkiet"
                           incorrectAnswer:@"Italien"
                           incorrectAnswer:@"Spanien"]];
    
    [array addObject:[Question newQuestion:@"Vad heter den främsta guden i nordisk mytologi?"
                             correctAnswer:@"Tor"
                           incorrectAnswer:@"Tyr"
                           incorrectAnswer:@"Oden"
                           incorrectAnswer:@"Balder"]];
    
    [array addObject:[Question newQuestion:@"Vad är ett annat ord för nattmat?"
                             correctAnswer:@"Vickning"
                           incorrectAnswer:@"Aperitif"
                           incorrectAnswer:@"Sängfösare"
                           incorrectAnswer:@"Brunch"]];
    
    [array addObject:[Question newQuestion:@"Vilket år startade andra världskriget med invasionen av Polen?"
                             correctAnswer:@"1939"
                           incorrectAnswer:@"1919"
                           incorrectAnswer:@"1929"
                           incorrectAnswer:@"1949"]];
    
    [array addObject:[Question newQuestion:@"Vad av följande är ett hormon?"
                             correctAnswer:@"Adrenalin"
                           incorrectAnswer:@"Amfetamin"
                           incorrectAnswer:@"Alvedon"
                           incorrectAnswer:@"Antibiotika"]];
    
    [array addObject:[Question newQuestion:@"Vad heter en person som har en liten, ofta stum roll i en film?"
                             correctAnswer:@"Statist"
                           incorrectAnswer:@"Statsvetare"
                           incorrectAnswer:@"Statistiker"
                           incorrectAnswer:@"Stationsinspektör"]];
    return array;
}


@end
