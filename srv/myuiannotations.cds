using from './CatalogService';

annotate CatalogService.Students with @(
    UI:{
        LineItem:[
            {
                $Type : 'UI.DataField',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Value : first_name,
            },
            {
                $Type : 'UI.DataField',
                Value : last_name,
            },
        ]
    }
);

annotate CatalogService.Students with {
    email @title : '{i18n>email}';
    first_name @title : '{i18n>firstname}';
    last_name @title : '{i18n>lastname}';
    date_sign_up @title : '{i18n>date}';
};
