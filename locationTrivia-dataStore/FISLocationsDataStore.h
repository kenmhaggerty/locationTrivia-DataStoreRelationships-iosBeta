//
//  FISLocationsDataStore.h
//  locationTrivia-dataStore
//
//  Created by Ken M. Haggerty on 2/9/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISLocation.h"

@interface FISLocationsDataStore : NSObject
@property (strong, nonatomic) NSMutableArray <FISLocation *> *locations;
+ (instancetype)sharedLocationsDataStore;
@end
