/*
	YPCountryListResponse.h
	The implementation of properties and methods for the YPCountryListResponse object.
	Generated by SudzC.com
*/
#import "YPCountryListResponse.h"
#import "XMLReader.h"
#import "YPCountryDetail.h"

//#import "YPCountryList.h"

@implementation YPCountryListResponse
	@synthesize countryList = _countryList;
	@synthesize responseMessage = _responseMessage;
	@synthesize statusCode = _statusCode;
	@synthesize valid = _valid;

	- (id) init
	{
		if(self = [super init])
		{
			self.countryList = [[NSMutableArray alloc] init];
			self.responseMessage = nil;

		}
		return self;
	}


-(void)parsingCountryList:(NSDictionary*)dictResponse{

    
    NSLog(@"----- -- -- -- %@",dictResponse);
    
    
    NSMutableArray *arrayCountryList=[[[[dictResponse valueForKey:@"getCountryListResponse"] valueForKey:@"getCountryListReturn"] valueForKey:@"countryList"] valueForKey:@"countryDetails"];
    
    _statusCode=[[[[[dictResponse valueForKey:@"getCountryListResponse"] valueForKey:@"getCountryListReturn"] valueForKey:@"statusCode"] valueForKey:@"text"] intValue];
    _responseMessage=[[[[dictResponse valueForKey:@"getCountryListResponse"] valueForKey:@"getCountryListReturn"] valueForKey:@"responseMessage"] valueForKey:@"text"];
   // _valid=[[[[dictResponse valueForKey:@"getCountryListResponse"] valueForKey:@"getCountryListReturn"] valueForKey:@"valid"] valueForKey:@"text"];
    
    
    for (int i=0; i<arrayCountryList.count; i++)
    {
        
       YPCountryDetail *objCountryDetail=[[YPCountryDetail alloc] init];
        
        objCountryDetail.countryCode=[[[[[[[dictResponse valueForKey:@"getCountryListResponse"] valueForKey:@"getCountryListReturn"] valueForKey:@"countryList"] valueForKey:@"countryDetails"] objectAtIndex:i]valueForKey:@"countryCode"] valueForKey:@"text"];
        
        objCountryDetail.countryName=[[[[[[[dictResponse valueForKey:@"getCountryListResponse"] valueForKey:@"getCountryListReturn"] valueForKey:@"countryList"] valueForKey:@"countryDetails"] objectAtIndex:i]valueForKey:@"countryName"] valueForKey:@"text"];
        [_countryList addObject:objCountryDetail];
    }
 


}

@end