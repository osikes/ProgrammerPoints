//
//  PPIdiot.h
//  ProgrammerPoints
//
//  Created by wodom on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPCollection.h"

@interface PPIdiot : NSObject
{
    NSString *id;
    NSString *firstName;
    NSString *lastName;
    PPCollection *smartPoints;
    PPCollection *stupidPoints;
}

@property (nonatomic, retain) NSString *id;
@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, retain) PPCollection *smartPoints;
@property (nonatomic, retain) PPCollection *stupidPoints;

- (PPIdiot *) initWithoutName;
- (PPIdiot *) initWithFirstName: (NSString *) firstName lastName: (NSString *) lastName;

@end

/*
 namespace IdiotStats.Domain.Entities
     {
     public class IdiotEntity
     {
         [BsonRepresentation(MongoDB.Bson.BsonType.ObjectId)]
         public string Id { get; set; }
         public string firstName { get; set; }
         public string lastName { get; set; }
         public PointCollection smartPoints { get; set; }
         public PointCollection stupidPoints { get; set; }
         
         public IdiotEntity()
         {
             
             this.firstName = "";
             this.lastName = "";
             smartPoints = new PointCollection();
             stupidPoints = new PointCollection();
         }
         
         public IdiotEntity(string firstName, string lastName)
         {
             this.firstName = firstName;
             this.lastName = lastName;
             smartPoints = new PointCollection();
             stupidPoints = new PointCollection();
         }
     
     
     }
 }
 */