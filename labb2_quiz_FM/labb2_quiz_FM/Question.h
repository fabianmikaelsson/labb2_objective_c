//
//  Question.h
//  labb2_quiz_FM
//
//  Created by Fabian Mikaelsson on 2017-01-29.
//  Copyright © 2017 Fabian Mikaelsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

- (NSString*) getQuestion;
- (NSArray*) getAnswers;
- (NSString*) getCorrectAnswer;

+ (Question*) newQuestion:(NSString*)question correctAnswer:(NSString*)answer incorrectAnswer:(NSString*)incorrectAnswer1 incorrectAnswer:(NSString*)incorrectAnswer2 incorrectAnswer:(NSString*)incorrectAnswer3;
+ (NSMutableArray*) generateQuestions;

@end
