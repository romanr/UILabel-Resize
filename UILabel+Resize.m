//
//  UILabel+Resize.m
//
//  Created by Roman Roan on 15/12/10.
//

#import "UILabel+Resize.h"


@implementation UILabel (Resize)

- (void)autoAdjustHeight
{
    CGSize size = [self.text sizeWithFont:self.font
						constrainedToSize:CGSizeMake(self.frame.size.width, 99999)
							lineBreakMode:self.lineBreakMode];
    
    CGRect frame = self.frame;
    frame.size.height = size.height;
    self.frame = frame;
}

- (void)sizeToFitWidth{
	float maxheight=self.frame.size.height;
	self.numberOfLines = 0;
	self.lineBreakMode = UILineBreakModeWordWrap;
	CGSize sz=[self.text sizeWithFont:self.font constrainedToSize:CGSizeMake(self.frame.size.width,99999)];
	CGRect fr=self.frame;
	if (sz.height<maxheight) {
		fr.size.height=sz.height;
	}
	self.frame=fr;
	[self setNeedsLayout];
}

-(BOOL)textOverflows{
	float maxheight=self.frame.size.height;
	CGSize sz=[self.text sizeWithFont:self.font constrainedToSize:CGSizeMake(self.frame.size.width,99999)];
	if (sz.height>maxheight) {
		return YES;
	}
return NO;
}
@end
