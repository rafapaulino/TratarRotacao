//
//  PrincipalViewController.h
//  TratarRotacao
//
//  Created by Rafael Brigagão Paulino on 24/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrincipalViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *botao1;
@property (nonatomic, weak) IBOutlet UIButton *botao2;
@property (nonatomic, weak) IBOutlet UIButton *botao3;

@property (nonatomic, weak) IBOutlet UIImageView *imagem;


@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *meusBotoes;

@end
