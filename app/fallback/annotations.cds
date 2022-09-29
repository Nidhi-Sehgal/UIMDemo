using fallbackPatterns as service from '../../srv/schema_srv';

annotate service.fallbackPatterns with {
    FallbackPatternName @title : 'Dummy Pattern'
};


annotate service.fallbackPatterns with @(

    UI.SelectionFields : [FallbackPatternName],
    UI.LineItem        : [
        {
            $Type : 'UI.DataField',
            Label : 'Dummy Pattern',
            Value : FallbackPatternName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Dummy Pattern Type',
            Value : FallbackPatternType_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Dummy Value',
            Value : FallbackPatternValue,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : FallbackPatternDescription,
        },
    ],

    UI.HeaderInfo      : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'Dummy Pattern',
        TypeNamePlural : 'Dummy Patterns',
        Title          : {
            $Type : 'UI.DataField',
            Value : FallbackPatternName,

        },
        Description    : {
            $Type : 'UI.DataField',
            Value : FallbackPatternDescription,
        },
    },


);

annotate service.fallbackPatterns with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Dummy Pattern',
                Value : FallbackPatternName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Dummy Pattern Type',
                Value : FallbackPatternType_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Dummy Value',
                Value : FallbackPatternValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : FallbackPatternDescription,
            },
        ],
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'Dummy Pattern',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.fallbackPatterns with {
    FallbackPatternType
    @Common.Label : 'Dummy Pattern Type'
    @(Common : {
        ValueListWithFixedValues : true,
        ValueList : {
        CollectionPath  : 'edmCoreTypes',
        SearchSupported : true,
        Parameters      : [
            {
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : FallbackPatternType_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type             : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Description',
            }
        ],
    },

    });
}
