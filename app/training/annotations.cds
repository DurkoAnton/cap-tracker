using TrainingService as service from '../../srv/TrainingService';
annotate service.Training with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Date',
                Value : date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'muscles_code',
                Value : muscles.code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'weight',
                Value : weight,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'date',
            Value : date,
        },
        {
            $Type : 'UI.DataField',
            Label : 'muscles_code',
            Value : muscles.code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'weight',
            Value : weight,
        },
    ],
);

annotate service.Training with @(
    UI.HeaderInfo : {
        TypeName : 'Training Day',
        TypeNamePlural : 'Training Days',
        Description : {
            $Type : 'UI.DataField',
            Value : 'Training Days',
        },
    }
);
annotate service.Training with {
    date @Common.FieldControl : #ReadOnly
};
annotate service.MuscleType with {
    code @(Common:{
        
            ValueList : {
                $Type : 'Common.ValueListType',
                CollectionPath : 'MuscleType',
            
                Parameters : [
                    {
                        $Type : 'Common.ValueListParameterInOut',
                        LocalDataProperty : code,
                        ValueListProperty : 'code',
                    },
                    {
                        $Type : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty : 'name',
                    },
                ],
                Label : 'Muscles',
        }, ValueListWithFixedValues,
})};

annotate service.MuscleType with {
    code @Common.Text : name
};
