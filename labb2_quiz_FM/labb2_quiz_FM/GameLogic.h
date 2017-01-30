//
//  GameLogic.h
//  labb2_quiz_FM
//
//  Created by Fabian Mikaelsson on 19/01/17.
//  Copyright © 2017 Fabian Mikaelsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameLogic : NSObject

- (void) newQuestion;
- (void) answerQuestion:(NSString*) answer;
- (NSString*) getQuestion;
- (NSArray*) getAnswers;
- (NSString*) getCorrectAnswer;
- (BOOL) wasAnswerCorrect;

@end
