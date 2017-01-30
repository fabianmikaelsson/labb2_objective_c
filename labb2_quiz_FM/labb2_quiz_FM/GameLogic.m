//
//  GameLogic.m
//  labb2_quiz_FM
//
//  Created by Fabian Mikaelsson on 19/01/17.
//  Copyright © 2017 Fabian Mikaelsson. All rights reserved.
//

#import "GameLogic.h"
#import "Question.h"

@interface GameLogic ()

@property (nonatomic) NSMutableArray* questions;
@property (nonatomic) Question* currentQuestion;
@property (nonatomic) BOOL wasLastAnswerCorrect;

@end

@implementation GameLogic

- (instancetype) init {
    self = [super init];
    if (self) {
        _questions = [Question generateQuestions];
    }
    return self;
}

- (void)newQuestion {
    self.questions = [Question generateQuestions];
    int randomNumber = arc4random_uniform((int)self.questions.count);
    self.currentQuestion = self.questions[randomNumber];
    [self.questions removeObjectAtIndex:randomNumber];
    
    self.wasLastAnswerCorrect = NO;
}

- (void)answerQuestion:(NSString*)answer {
    if ([answer isEqualToString:[self getCorrectAnswer]]) {
        self.wasLastAnswerCorrect = YES;
        
    } else {
        self.wasLastAnswerCorrect = NO;
    }
}

- (BOOL)wasAnswerCorrect {
    return self.wasLastAnswerCorrect;
}

- (NSString*)getQuestion {
    return [self.currentQuestion getQuestion];
}

- (NSArray*)getAnswers {
    return [self.currentQuestion getAnswers];
}

- (NSString*)getCorrectAnswer {
    return [self.currentQuestion getCorrectAnswer];
}

@end
