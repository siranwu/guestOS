#if defined(__unix__)
#import "X11Event.h"

@implementation X11Event

-initWithXEvent:(XEvent)event {
   _event=event;
   return self;
}


@end

#endif
