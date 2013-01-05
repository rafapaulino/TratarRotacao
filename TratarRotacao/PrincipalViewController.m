//
//  PrincipalViewController.m
//  TratarRotacao
//
//  Created by Rafael Brigagão Paulino on 24/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

//metodo chamado toda vez que o device tem sua orientacao alterada, ondea view controller quer saber se deve redimensionar sua interface
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    //com o return yes a view sera reajustada para todas as orientcaoes
    return YES;
}

//metodo chamado quando a resposta do metodo anterior foi poisitiva e precisamos fazer algo na rotacao quando a view estiver prestes a rtacionar
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)
    {
        /*
        _botao1.hidden = YES;
        _botao2.hidden = YES;
        _botao3.hidden = YES;
        */
        //esconder todos os botoes ao mesmo tempo
        for (UIButton *btn in _meusBotoes)
        {
            btn.hidden = YES;
            
            /*
             escondendo todos menos o botao 3
             if (btn != _botao3) 
             {
                btn.hidden = YES;
             }
            */
        }
    }
    else
    {
        /*
         _botao1.hidden = NO;
        _botao2.hidden = NO;
        _botao3.hidden = NO;
        */
        //exibirrtodos os botoes ao mesmo tempo
        for (UIButton *btn in _meusBotoes)
        {
            btn.hidden = NO;
        }
    }
}

//metodo chamado cquando a view ja rotacionou
-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    if (fromInterfaceOrientation == UIInterfaceOrientationPortrait)
    {
        _botao1.frame = CGRectMake(_botao3.frame.origin.x -100,_botao3.frame.origin.y, _botao1.frame.size.width,_botao1.frame.size.height);
        
       _botao2.frame = CGRectMake(_botao3.frame.origin.x +200,_botao3.frame.origin.y, _botao2.frame.size.width,_botao2.frame.size.height);
    }
    else
    {
       _botao1.frame = CGRectMake(65,371, _botao1.frame.size.width,_botao1.frame.size.height);
        _botao2.frame = CGRectMake(209,371, _botao2.frame.size.width,_botao2.frame.size.height);
    }
}

@end
