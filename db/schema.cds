namespace demo;

using {cuid} from '@sap/cds/common';


entity Employees : cuid {
    firstName : String @mandatory;
    lastName  : String @mandatory;
    email     : String @mandatory;
    address   : Association to Addresses;
    expenses  : Composition of many Expenses
                    on expenses.employee = $self;
    teams     : Association to  many Teams_Employees
                    on teams.employee = $self;
}


entity Addresses : cuid {
    street : String @mandatory;
    city   : String @mandatory;
    state  : String @mandatory;
// Uncomment if you want to get back to Employee from Address...
// Note:  You also need to make sure the demo-Addresses.csv file has the proper values for employee_ID
// employee : Association to Employees;
}

entity Expenses : cuid {
    name        : String;
    description : String;
    amount      : Decimal;
    employee    : Association to Employees;
}

entity Teams : cuid {
    name        : String;
    description : String;
    employees   : Association to many Teams_Employees on employees.team = $self; 
}

entity Teams_Employees {
    key team     : Association to Teams;
    key employee : Association to Employees;
}
