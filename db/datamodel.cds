using { cuid } from '@sap/cds/common';

namespace anubhav.db;
entity Students{
    key email : String(65);
    first_name : String(20);
    last_name : String(20);
    date_sign_up : Date;
    courses: Association to Courses;
}
 
entity Courses{
    key ID : Integer;
    course_name : String(70);
    method : String(20);
    start_date : Date;
    end_date : Date;
    students: Association to one Students on students.courses = $self;
}

entity Demos : cuid {
    DemoDate : Date;
    courseName : String;
    TrainerName : String;
    SeatsAvailable : Integer;
    SeatsBooked : Integer;

}