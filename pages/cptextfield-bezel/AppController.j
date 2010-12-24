@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
    CPWindow theWindow;
    CPTextField theFitTextField;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    
}

- (void)awakeFromCib
{
    [theWindow setFullPlatformWindow:YES];
    
    [theFitTextField sizeToFit];
    
    var programTextField = [CPTextField new];
    
    var frame = [theFitTextField frame];
    frame.origin.y += 24.0;
    [programTextField setFrame:frame];
    [programTextField setStringValue:@"programTextField"];
    [programTextField setBezeled:YES];
    
    [[theWindow contentView] addSubview:programTextField];
}

@end
