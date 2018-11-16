//
//  ViewController.m
//  a1
//
//  Created by aofeilin on 2018/11/12.
//  Copyright © 2018年 com.sphere.opg.sbuy. All rights reserved.
//

#import "ViewController.h"
#import "Son.h"
#import "People.h"
#import "Father.h"
#import <objc/runtime.h>
@interface ViewController ()
@property (nonatomic)NSMutableArray *mutableArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    People * people = [[People alloc] init];
    Father * father = [[Father alloc] init];
    Son * son = [[Son alloc] init];
    //1.object_getClass 获取isa
    //2.[类 class] 获取类对象
    //3.实列对象的isa 是 类对象
    Class isaPeople = object_getClass(people);
    Class clsPeople = [people class];
    Class isaFather = object_getClass(father);
    Class clsFather = [father class];
    Class isaSon = object_getClass(son);
    Class clsSon = [son class];
    NSLog(@"People实列对象的isa%p 类对象%p" , isaPeople,clsPeople);
    NSLog(@"Father实列对象的isa%p 类对象%p" , isaFather,clsFather);
    NSLog(@"Son实列对象的isa%p 类对象%p" , isaSon,clsSon);
    //4.类对象的isa 是元类
    Class clsPeople2 = [People class];
    Class metaPeopleObj = object_getClass(clsPeople2);
    Class clsFather2 = [Father class];
    Class metaFatherObj = object_getClass(clsFather2);
    Class clsSon2 = [Son class];
    Class metaClassObj = object_getClass(clsSon2);
    NSLog(@"People类对象的isa 是元类 %p" , metaPeopleObj);
    NSLog(@"Father类对象的isa 是元类 %p" , metaFatherObj);
    NSLog(@"Son类对象的isa 是元类 %p" , metaClassObj);
    //5.元类的isa 是根类
    Class rootPeopleObj = object_getClass(metaPeopleObj);
    Class rootFatherObj = object_getClass(metaFatherObj);
    Class rootClassObj = object_getClass(metaClassObj);
    Class objectClassObj = object_getClass([NSObject class]);
    NSLog(@"People元类的isa %p" , rootPeopleObj);
    NSLog(@"Father元类的isa %p" , rootFatherObj);
    NSLog(@"Son元类的isa %p" , rootClassObj);
    NSLog(@"object元类的isa %p" , objectClassObj);
    //6.实例对象的super class 父类
    NSLog(@"People实例对象的super class 父类 %p" , people.superclass);
    NSLog(@"Father实例对象的super class 父类 %p" , father.superclass);
    NSLog(@"Son实例对象的super class 父类 %p" , son.superclass);
    NSLog(@"object实例对象的super class 父类 %p" , [NSObject new].superclass);
    //7.类对象的super class 父类
    NSLog(@"People类对象的super class 父类 %p" , clsPeople.superclass);
    NSLog(@"Father类对象的super class 父类 %p" , clsFather.superclass);
    NSLog(@"Son类对象的super class 父类 %p" , clsSon.superclass);
    NSLog(@"object类对象的super class 父类 %p" , [NSObject class].superclass);
    //8.元类对象的super class 父类
    NSLog(@"People元类对象super class 父类 %p" , metaPeopleObj.superclass);
    NSLog(@"Father元类对象super class 父类 %p" , metaFatherObj.superclass);
    NSLog(@"Son元类对象super class 父类 %p"  ,metaClassObj.superclass);
    NSLog(@"object元类对象super class 父类 %p" , object_getClass([NSObject class]).superclass);
    /*
     2018-11-15 17:52:52.806249+0800 a1[6312:1110572] People实列对象的isa0x102521250 类对象0x102521250
     2018-11-15 17:52:52.806285+0800 a1[6312:1110572] Father实列对象的isa0x1025212a0 类对象0x1025212a0
     2018-11-15 17:52:52.806298+0800 a1[6312:1110572] Son实列对象的isa0x1025212f0 类对象0x1025212f0
     2018-11-15 17:52:52.806311+0800 a1[6312:1110572] People类对象的isa 是元类 0x102521228
     2018-11-15 17:52:52.806322+0800 a1[6312:1110572] Father类对象的isa 是元类 0x102521278
     2018-11-15 17:52:52.806332+0800 a1[6312:1110572] Son类对象的isa 是元类 0x1025212c8
     2018-11-15 17:52:52.806343+0800 a1[6312:1110572] People元类的isa 0x248e70e60
     2018-11-15 17:52:52.806353+0800 a1[6312:1110572] Father元类的isa 0x248e70e60
     2018-11-15 17:52:52.806363+0800 a1[6312:1110572] Son元类的isa 0x248e70e60
     2018-11-15 17:52:52.806372+0800 a1[6312:1110572] object元类的isa 0x248e70e60
     2018-11-15 17:52:52.806384+0800 a1[6312:1110572] People实例对象的super class 父类 0x248e70eb0
     2018-11-15 17:52:52.806395+0800 a1[6312:1110572] Father实例对象的super class 父类 0x1025212f0
     2018-11-15 17:52:52.806438+0800 a1[6312:1110572] Son实例对象的super class 父类 0x102521250
     2018-11-15 17:52:52.806451+0800 a1[6312:1110572] object实例对象的super class 父类 0x0
     2018-11-15 17:52:52.806464+0800 a1[6312:1110572] People类对象的super class 父类 0x248e70eb0
     2018-11-15 17:52:52.806474+0800 a1[6312:1110572] Father类对象的super class 父类 0x1025212f0
     2018-11-15 17:52:52.806484+0800 a1[6312:1110572] Son类对象的super class 父类 0x102521250
     2018-11-15 17:52:52.806495+0800 a1[6312:1110572] object类对象的super class 父类 0x0
     2018-11-15 17:52:52.806504+0800 a1[6312:1110572] People元类对象super class 父类 0x248e70e60
     2018-11-15 17:52:52.806514+0800 a1[6312:1110572] Father元类对象super class 父类 0x1025212c8
     2018-11-15 17:52:52.806524+0800 a1[6312:1110572] Son元类对象super class 父类 0x102521228
     2018-11-15 17:52:52.806534+0800 a1[6312:1110572] object元类对象super class 父类 0x248e70eb0
    */
}

static void setExpressionFormula(id self, SEL cmd, id value)
{
    NSLog(@"call setExpressionFormula");
}

static void getExpressionFormula(id self, SEL cmd)
{
    NSLog(@"call getExpressionFormula");
}
- (void)fooNoInputs {
    NSLog(@"Does nothing");
}

@end
