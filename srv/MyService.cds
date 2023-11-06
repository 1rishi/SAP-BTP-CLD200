using { anubhav.db.master} from '../db/datamodel';

service MyService {
    @readonly
    entity ReadEmployeeSrv as projection on master.employees;
    @insertonly
    entity InserEmployeeSrv as projection on master.employees;
    @updateonly
    entity UpdateEmployeeSrv as projection on master.employees;
    @deleteonly
    entity DeleteEmployeeSrv as projection on master.employees;

///hello(name='Rishi') command to run the app
    function hello(name: String) returns String;
    
}