/*
	YPRemoveCardResponse.h
	The implementation of properties and methods for the YPRemoveCardResponse object.
	Generated by SudzC.com
*/
#import "YPRemoveCardResponse.h"

@implementation YPRemoveCardResponse
	@synthesize responseMessage = _responseMessage;
	@synthesize statusCode = _statusCode;
	@synthesize valid = _valid;

	- (id) init
	{
		if(self = [super init])
		{
			self.responseMessage = nil;

		}
		return self;
	}

-(void)parsingDeleteCard:(NSDictionary*)dictResponse{

    NSLog(@"parsingGetCards  = %@",dictResponse);
    
//    self.statusCode=[[[[[dictResponse valueForKey:@"getCardsInWalletDetailedResponse"] valueForKey:@"getCardsInWalletDetailedReturn"] valueForKey:@"statusCode"] valueForKey:@"text"]intValue];
//    
//    self.responseMessage=[[[[dictResponse valueForKey:@"getCardsInWalletDetailedResponse"] valueForKey:@"getCardsInWalletDetailedReturn"] valueForKey:@"responseMessage"] valueForKey:@"text"];

}



@end