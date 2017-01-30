//
//  GameLogicViewController.m
//  labb2_quiz_FM
//
//  Created by Fabian Mikaelsson on 19/01/17.
//  Copyright © 2017 Fabian Mikaelsson. All rights reserved.
//

#import "ViewQuiz.h"
#import "GameLogic.h"

@interface ViewQuiz ()

@property (strong, nonatomic) IBOutlet UILabel *Question;
@property (strong, nonatomic) IBOutlet UILabel *uFeedback;

@property (weak, nonatomic) IBOutlet UIButton *answerButtonA;
@property (weak, nonatomic) IBOutlet UIButton *answerButtonB;
@property (weak, nonatomic) IBOutlet UIButton *answerButtonC;
@property (weak, nonatomic) IBOutlet UIButton *answerButtonD;
@property (weak, nonatomic) IBOutlet UIButton *nextQuestionButton;

@property (nonatomic) GameLogic *gameLogic;

@end

@implementation ViewQuiz

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameLogic = [[GameLogic alloc] init];
    [self displayNewQuestion];
}

- (void)displayNewQuestion {
    self.nextQuestionButton.hidden = YES;
    self.uFeedback.hidden = YES;
    [self showAnswerButtons];
    [self.gameLogic newQuestion];
    self.Question.text = [self.gameLogic getQuestion];
    
    NSArray *answers = [self.gameLogic getAnswers];
    NSMutableArray *buttons = [@[self.answerButtonA, self.answerButtonB, self.answerButtonC, self.answerButtonD] mutableCopy];
    for (int i = 0; i < answers.count; i ++) {
        int button = arc4random_uniform((int)buttons.count);
        [buttons[button] setTitle:answers[i] forState:UIControlStateNormal];
        [buttons removeObjectAtIndex:button];
    }
}

- (void)displayAnswer {
    _uFeedback.hidden = NO;
    _nextQuestionButton.hidden = NO;
    [self hideAnswerButtons];
    if ([self.gameLogic wasAnswerCorrect]) {
        self.uFeedback.text = @"Rätt!";
        
    } else {
        self.uFeedback.text = @"Fel!";
    }
    
    NSString *answer = [NSString stringWithFormat: @"Svaret var: %@", [self.gameLogic getCorrectAnswer]];
    self.Question.text = answer;
}

- (void)hideAnswerButtons {
    _answerButtonA.hidden = YES;
    _answerButtonB.hidden = YES;
    _answerButtonC.hidden = YES;
    _answerButtonD.hidden = YES;
}

- (void)showAnswerButtons {
    _answerButtonA.hidden = NO;
    _answerButtonB.hidden = NO;
    _answerButtonC.hidden = NO;
    _answerButtonD.hidden = NO;
}

- (IBAction)answerButtons:(UIButton*)sender {
    NSString* answer = sender.currentTitle;
    [self.gameLogic answerQuestion:answer];
    [self displayAnswer];
    _nextQuestionButton.hidden = false;
}

- (IBAction)nextQuestionButton:(id)sender {
    [self displayNewQuestion];
}

@end
