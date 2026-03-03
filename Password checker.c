#include<stdio.h>
#include<string.h>
#include<ctype.h>

int main() {
    char password[100];
    int hasUpper=0, hasLower=0, hasDigit=0, hasSpecial=0;
    

    printf("Enter the password: ");
    scanf("%s", password);
    int length = strlen(password);
    for (int i=0; i<length; i++) {
        if(isupper(password[i]))
            hasUpper = 1;
        else if (islower(password[i])) 
            hasLower = 1;
        else if (isdigit(password[i]))
            hasDigit = 1;
        else
            hasSpecial = 1;
        
    }



    //int score = hasUpper + hasLower + hasDigit + hasSpecial;
    if(length<=4)
        printf("Weak Password\n");
    else if(length == 6)
        printf("Medium Password\n");
    else if(length<= 8)
        printf("You can use this Password\n");
    else if(length>8)
        printf("VERY STRONG PASSWORD\n");
    else {
        printf("WEAK PASSWORD PLESE CHANGE IT");
    }

     



        printf("--------PASSWORD STRENGTH ACCODING TO RAMBOY TABLE-------------");
        printf("Numberofcharacter Numberonly Lowercharacter UPPLOWLETTER NUMLOWUPPLETTER NUMUPPERLOWLETTERSYM"
                  "4"              "Instantly"   "Instantly"  "Instantly"   "Instantly"        "Instantly"                                            
                  "6"              "Instantly"   "Instantly"  "Instantly"   "Instantly"        "Instantly"          
                  "8"              "Instantly"   "Instantly"  "Instantly"   "7 sec"            "13"
                  "13"             "19 sec"    "2 months"    "1k year"       "12k year"      "202k year"                                                                  
        
      "Its whole data from rambow table 2022 year"
                );

printf("Mack sure one password use only one platform ");
   return 0;
}