/*
	YPUserInfoResponse.h
	The implementation of properties and methods for the YPUserInfoResponse object.
	Generated by SudzC.com
*/
#import "YPUserInfoResponse.h"

@implementation YPUserInfoResponse
	@synthesize DOB = _DOB;
	@synthesize city = _city;
	@synthesize country = _country;
	@synthesize emailAddress = _emailAddress;
	@synthesize firstName = _firstName;
	@synthesize geoLocationLatitude = _geoLocationLatitude;
	@synthesize geoLocationLongitude = _geoLocationLongitude;
	@synthesize lastName = _lastName;
	@synthesize middleName = _middleName;
	@synthesize mobilePhoneNumber = _mobilePhoneNumber;
	@synthesize postCode = _postCode;
	@synthesize region = _region;
	@synthesize responseMessage = _responseMessage;
	@synthesize sex = _sex;
	@synthesize statusCode = _statusCode;
	@synthesize streetAddress1 = _streetAddress1;
	@synthesize streetAddress2 = _streetAddress2;
	@synthesize valid = _valid;

	- (id) init
	{
		if(self = [super init])
		{
			self.DOB = nil;
			self.city = nil;
			self.country = nil;
			self.emailAddress = nil;
			self.firstName = nil;
			self.geoLocationLatitude = nil;
			self.geoLocationLongitude = nil;
			self.lastName = nil;
			self.middleName = nil;
			self.mobilePhoneNumber = nil;
			self.postCode = nil;
			self.region = nil;
			self.responseMessage = nil;
			self.sex = nil;
			self.streetAddress1 = nil;
			self.streetAddress2 = nil;

		}
		return self;
	}

-(void)parsingUserInfo:(NSDictionary*)dictResponse{
    
    
    NSLog(@"parsingUpdatePassword = %@",dictResponse);
    
    
    
    
    self.statusCode=[[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"statusCode"] valueForKey:@"text"]intValue];
    
    self.responseMessage=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"responseMessage"] valueForKey:@"text"];
    
    self.DOB=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"DOB"] valueForKey:@"text"];
    
    self.city=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"city"] valueForKey:@"text"];
    
    self.country=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"country"] valueForKey:@"text"];
    
    self.emailAddress=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"emailAddress"] valueForKey:@"text"];
    
    self.firstName=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"firstName"] valueForKey:@"text"];
   
    self.geoLocationLatitude=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"geoLocationLatitude"] valueForKey:@"text"];
    
    self.geoLocationLongitude=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"geoLocationLongitude"] valueForKey:@"text"];
    
    self.lastName=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"lastName"] valueForKey:@"text"];
   
    self.middleName=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"middleName"] valueForKey:@"text"];
    
    self.postCode=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"postCode"] valueForKey:@"text"];
    
    self.region=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"region"] valueForKey:@"text"];
   
    self.sex=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"sex"] valueForKey:@"text"];
    
    self.streetAddress1=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"streetAddress1"] valueForKey:@"text"];
    
    self.streetAddress2=[[[[dictResponse valueForKey:@"getUserInfoResponse"] valueForKey:@"getUserInfoReturn"] valueForKey:@"streetAddress2"] valueForKey:@"text"];
    
   
    
   
    
    
    
}

@end