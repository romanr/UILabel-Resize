//
//  UILabel+Resize.h
//
//  Created by Roman Roan on 15/12/10.
//

#import <Foundation/Foundation.h>


@interface UILabel (Resize) 

- (void)autoAdjustHeight;
- (void)sizeToFitWidth;
- (BOOL)textOverflows;
@end
