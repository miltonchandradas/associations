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
}
