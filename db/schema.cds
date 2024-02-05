namespace demo;

using {cuid} from '@sap/cds/common';


entity Employees : cuid {
    firstName : String @mandatory;
    lastName  : String @mandatory;
    email     : String @mandatory;
    address   : Association to Addresses;
}


entity Addresses : cuid {
    street : String @mandatory;
    city   : String @mandatory;
    state  : String @mandatory;
// Uncomment if you want to get back to Employee from Address...
// Note:  You also need to make sure the demo-Addresses.csv file has the proper values for employee_ID
// employee : Association to Employees;
}
