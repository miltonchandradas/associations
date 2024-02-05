using {demo} from '../db/schema';

@path: 'service/demo'
service DemoService {
    entity Employees as select from demo.Employees;
    entity Addresses as select from demo.Addresses;
    // Comment this line if you don't want to expose Expenses directly...
    entity Expenses  as select from demo.Expenses;
    entity Teams     as select from demo.Teams;

    entity Teams_Employees    as select from demo.Teams_Employees;

}
