//
//  PPCollection.h
//  ProgrammerPoints
//
//  Created by wodom on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPPoint.h"

@interface PPCollection : NSObject
{
    NSString *id;
    int total;
    NSMutableArray *points;
}

@property (nonatomic, retain) NSString *id;
@property int total;
@property (nonatomic, retain) NSMutableArray *points;


- (PPCollection *) initEmptyCollection;
- (BOOL) addPoint:(PPPoint *) point;
- (BOOL) flush; // gets rid of all the PP in the "collection"

@end

/*
 public class PointCollection
 {
     public string Id { get; set; }
     public int total { get; set; }
     
     [BsonElement("records")]
     public List<PointEntity> points { get; set; }
     
     public PointCollection()
     {
         total = 0;
         points = new List<PointEntity>();
     }
     
     public void Add(PointEntity point)
     {
         total += point.value;
         points.Add(point);
     }
     
     public void Clear()
     {
         total = 0;
         points.Clear();
     }
 }
*/