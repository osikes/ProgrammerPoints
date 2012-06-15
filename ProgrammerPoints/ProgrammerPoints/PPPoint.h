//
//  PPPoint.h
//  ProgrammerPoints
//
//  Created by wodom on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PPPoint : NSObject
{
    NSString *id;
    NSDate *date; // use http://stackoverflow.com/questions/1684904/getting-current-time-in-string-in-custom-format-in-objective-c
    NSString *description;
    int value;
}

@property (nonatomic, retain) NSString *id;
@property (nonatomic, retain) NSDate *date;
@property (nonatomic, retain) NSString *description;
@property int value;

- (PPPoint *) initWithoutDetails;
- (PPPoint *) initWithDate: (NSDate *)date description: (NSString *)description value:(int)value;


@end


/*

 namespace IdiotStats.Domain.Entities
 {
     public class PointEntity
     {
         public string Id { get; set; }
         
         public DateTime date { get; set; }
         
         [BsonElement("details")]
         public string description { get; set; }
         
         public int value { get; set; }
         
         public PointEntity()
         {
             date = new DateTime();
             description = null;
             value = 0;
         }
         
         public PointEntity(DateTime date, string description, int value)
         {
             this.date = date;
             this.description = description;
             this.value = value;
         }
     }
 }
 
 
*/