//
//  NSData+MCO.h
//  mailcore2
//
//  Created by DINH Viêt Hoà on 1/21/13.
//  Copyright (c) 2013 MailCore. All rights reserved.
//

#ifndef __MAILCORE_NSDATA_MCO_H_

#define __MAILCORE_NSDATA_MCO_H_

#import <Foundation/Foundation.h>

#ifdef __cplusplus
namespace mailcore {
    class Data;
}
#endif

@interface NSData (MCO)

#ifdef __cplusplus
+ (NSData *) mco_dataWithMCData:(mailcore::Data *)cppData;

- (mailcore::Data *) mco_mcData;
#endif

@end

#endif
