using { anubhav.db as mymodel } from '../db/datamodel';

service CatalogService {
    entity Students as projection on mymodel.Students;
    entity Courses as projection on mymodel.Courses;   
    entity Demos as projection on mymodel.Demos excluding{
        SeatsBooked
    };

}

annotate CatalogService.Students with @odata.draft.enabled;
annotate CatalogService.Courses with @odata.draft.enabled;


