/* Copyright (c) 2006-2007 Christopher J. W. Lloyd

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. */

#import <AppKit/NSSound.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSRaise.h>

@implementation NSSound

+(NSArray *)soundUnfilteredFileTypes {
   NSUnimplementedMethod();
   return nil;
}

+(NSSound *)soundNamed:(NSString *)name {
   NSUnimplementedMethod();
   return nil;
}

-initWithContentsOfFile:(NSString *)path byReference:(BOOL)byReference {
   NSUnimplementedMethod();
   return nil;
}

-(BOOL)setName:(NSString *)name {
   NSUnimplementedMethod();
   return NO;
}

-(BOOL)play {
   NSUnimplementedMethod();
   return NO;
}

-(BOOL)pause {
   NSUnimplementedMethod();
   return NO;
}

-(BOOL)stop {
   NSUnimplementedMethod();
   return NO;
}

@end

@implementation NSBundle(NSSound)

-(NSString *)pathForSoundResource:(NSString *)name {
   NSArray *types=[NSSound soundUnfilteredFileTypes];
   int      i,count=[types count];

   for(i=0;i<count;i++){
    NSString *type=[types objectAtIndex:i];
    NSString *path=[self pathForResource:name ofType:type];

    if(path!=nil)
     return path;
   }

   return nil;
}

@end

