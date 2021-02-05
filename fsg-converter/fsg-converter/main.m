//  main.m
//  fsg-converter
//  Objective:
//  Suppose you are developing a library of routines to convert from one unit to another. Create an objective-c class called myConversion. Create fields named miles, kilometers, pounds, kilograms, inches, centimeters, US_dollars, CAN_dollars. Create a conversion method for each of the following:
//      miles to kilometers,
//      kilometers to miles,
//      kilograms to pounds,
//      pounds to kilograms,
//      inches to centimeters,
//      centimeters to inches,
//      us to canadian dollars,
//      canadian to us dollars
//  Prompt the user for their conversion choice (by entering a number from 1-8) and then have them enter a number to be converted. Call the appropriate conversion method and store both values (the original and the converted value) in the appropriate variable.
//  Created by Felipe SG on 2021-02-04.
//  Copyright © 2021 ca.nscc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myConversion: NSObject
-(void) milesToKm: (float) m;
-(void) kmToMiles: (float) m;
-(void) kgToPounds: (float) m;
-(void) poundsToKg: (float) m;
-(void) inchesToCm: (float) m;
-(void) cmToInches: (float) m;
-(void) usToCnd: (float) m;
-(void) cndToUs: (float) m;
-(void) Display: (int) i;
@end

@implementation myConversion {
    float miles;
    float kilometers;
    float pounds;
    float kilograms;
    float inches;
    float centimeters;
    float US_dollars;
    float CAN_dollars;
    
}
//getters and setters Miles
-(float) getMiles
{
    return miles;
}
-(void) setMiles: (float) n
{
    miles = n;
}
//getters and setters Kilometers
-(float) getKilometers
{
    return kilometers;
}
-(void) setKilometers: (float) n
{
    kilometers = n;
}
//getters and setters Pounds
-(float) getPounds
{
    return pounds;
}
-(void) setPounds: (float) n
{
    pounds = n;
}
//getters and setters Inches
-(float) getInches
{
    return inches;
}
-(void) setInches: (float) n
{
    inches = n;
}
//getters and setters Kilograms
-(float) getKilograms
{
    return kilograms;
}
-(void) setKilograms: (float) n
{
    kilograms = n;
}
//getters and setters Centimeters
-(float) getCentimeters
{
    return centimeters;
}
-(void) setCentimeters: (float) n
{
    centimeters = n;
}

//getters and setters US_dollars
-(float) getUsDollars
{
    return US_dollars;
}
-(void) setUsDollars: (float) n
{
    US_dollars = n;
}

//getters and setters CAN_dollars
-(float) getCanDollars
{
    return CAN_dollars;
}
-(void) setCanDollars: (float) n
{
    CAN_dollars = n;
}

//Convert Miles to Kilometers
-(void) milesToKm: (float) m
{
    [self setMiles:(m)];
    [self setKilometers:([self getMiles]*1.609)];
}
//Convert Kilometer to Miles
-(void) kmToMiles: (float) m
{
    [self setKilometers:(m)];
    [self setMiles:([self getKilometers]/1.609)];
}
//Convert Kilograms to Pounds
-(void) kgToPounds: (float) m
{
    [self setKilograms:(m)];
    [self setPounds:([self getKilograms]*2.205)];
}
//Convert Pounds to Kilograms
-(void) poundsToKg: (float) m
{
    [self setPounds:(m)];
    [self setKilograms:([self getPounds]/2.205)];
}
//Convert Inches to Centimeters
-(void) inchesToCm: (float) m
{
    [self setInches:(m)];
    [self setCentimeters:([self getInches]*2.54)];
}
//Convert Centimeters to Inches
-(void) cmToInches: (float) m
{
    [self setCentimeters:(m)];
    [self setInches:([self getCentimeters]/2.54)];
}
//Convert US_Dollars to CND_Dollars
-(void) usToCnd: (float) m
{
    [self setUsDollars:(m)];
    [self setCanDollars:([self getUsDollars]*1.28)];
}
//Convert CND_Dollars to US_Dollars
-(void) cndToUs: (float) m
{
    [self setCanDollars:(m)];
    [self setUsDollars:([self getCanDollars]/1.28)];
}

-(void) Display: (int) i
{
     switch (i)
     {
        case 1:
             NSLog(@"The convertion of %0.2f miles is %0.2f kilometers: ",
                  [self getMiles] ,[self getKilometers]);
             break;
         case 2:
             NSLog(@"The convertion of %0.2f kilometers is %0.2f miles: ",
                   [self getKilometers],[self getMiles]);
             break;
         case 3:
             NSLog(@"The convertion of %0.2f kilograms is %0.2f pounds: ",
                   [self getKilograms],[self getPounds]);
             break;
         case 4:
             NSLog(@"The convertion of %0.2f pounds is %0.2f kilograms: ",
                   [self getPounds],[self getKilograms]);
             break;
         case 5:
             NSLog(@"The convertion of %0.2f inches is %0.2f centimeters: ",
                   [self getInches],[self getCentimeters]);
             break;
         case 6:
             NSLog(@"The convertion of %0.2f centimeters is %0.2f inches: ",
                   [self getCentimeters],[self getInches]);
             break;
         case 7:
             NSLog(@"The convertion of %0.2f U.S Dollars is  %0.2f Canadian Dollars: ",
                   [self getUsDollars],[self getCanDollars]);
             break;
         case 8:
             NSLog(@"The convertion of %0.2f Canadian Dollars is  %0.2f U.S Dollars: ",
                   [self getCanDollars],[self getUsDollars]);
             break;
     }
}
@end

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int userInput = 0;
        float userInput2;
        myConversion *convertion = [[myConversion alloc] init];
      while (userInput != 9)
      {
        NSLog(@"Welcome to your personal convetion calculator");
        NSLog(@"Please, Select one option below");
        NSLog(@"[1] Convert Miles to Kilometers");
        NSLog(@"[2] Convert Kilometer to Miles ");
        NSLog(@"[3] Convert Kilograms to Pounds ");
        NSLog(@"[4] Convert Pounds to Kilograms ");
        NSLog(@"[5] Convert Inches to Centimeters ");
        NSLog(@"[6] Convert Centimeters to Inches ");
        NSLog(@"[7] Convert US_Dollars to CND_Dollars ");
        NSLog(@"[8] Convert CND_Dollars to US_Dollars ");
        NSLog(@"[9] Exit ");
        scanf("%i", &userInput);
        fflush(stdin);

            switch (userInput)
            {
                //convert Miles to Kilometers
                case 1:
                    NSLog(@"Type the Miles: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion milesToKm: userInput2];
                    [convertion Display:1];
                break;
                //Convert Kilometer to Miles
                case 2:
                    NSLog(@"Type the Kilometers: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion kmToMiles: userInput2];
                    [convertion Display:2];
                break;
                //Convert Kilograms to Pounds
                case 3:
                    NSLog(@"Type the kilograms: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion kgToPounds: userInput2];
                    [convertion Display:3];
                break;
                //Convert Pounds to Kilograms
                case 4:
                    NSLog(@"Type the pounds: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion poundsToKg: userInput2];
                    [convertion Display:4];
                break;
                //Convert Inches to Centimeters
                case 5:
                    NSLog(@"Type the Inches: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion inchesToCm: userInput2];
                    [convertion Display:5];
                break;
                //Convert Centimeters to Inches
                case 6:
                    NSLog(@"Type the centimeters: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion cmToInches: userInput2];
                    [convertion Display:6];
                break;
                //Convert US_Dollars to CND_Dollars
                case 7:
                    NSLog(@"Type the US Dollars: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion usToCnd: userInput2];
                    [convertion Display:7];
                break;
                //Convert CND_Dollars to US_Dollars
                case 8:
                    NSLog(@"Type the CND Dollars: ");
                    scanf("%f", &userInput2);
                    fflush(stdin);
                    [convertion cndToUs: userInput2];
                    [convertion Display:8];
                break;
                //Exit
                case 9:
                    NSLog(@"Hope to see you soon. Have a nice day!");
                break;
                default :
                    NSLog(@"Error!");
                    break;
               }
            }
        }
    return 0;
}
