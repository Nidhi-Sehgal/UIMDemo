using patterns as service from '../../srv/schema_srv';

annotate service.strategies with {
    ID   @title : 'Strategy';
    name @title : 'Strategy Description'
};

annotate service.patterns with {
    MaskingPatternName @title : 'Masking Pattern';
    MaskingPatternDescription    @title : 'Description'
};

annotate service.patterns with @(

    UI.SelectionFields : [MaskingPatternStrategy_ID],

    UI.LineItem        : [
        {
            $Type : 'UI.DataField',
            Label : 'Masking Pattern',
            Value : MaskingPatternName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Strategy',
            Value : MaskingPatternStrategy_ID,
        },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Set 1 Position',
        //     Value : Set1MaskingStartPositionVal,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Set 1 Masking Character(s)',
        //     Value : Set1MaskingCharacters,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Set 2 Position',
        //     Value : Set2MaskingStartPositionVal,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Set 2 Masking Character(s)',
        //     Value : Set2MaskingCharacters,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Set 3 Position',
        //     Value : Set3MaskingStartPositionVal,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Set 3 Masking Character(s)',
        //     Value : Set3MaskingCharacters,
        // },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : MaskingPatternDescription,
        },
    ],
    UI.HeaderInfo      : {
        TypeName       : 'Pattern',
        TypeNamePlural : 'Patterns',
        Title          : {
            $Type : 'UI.DataField',
            Value : MaskingPatternName,
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : MaskingPatternDescription,
        }
    }
);

annotate service.patterns with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Masking Pattern',
                Value : MaskingPatternName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Strategy',
                Value : MaskingPatternStrategy_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Apply masking for Empty Fields',
                Value : EmptyFieldIsMasked,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : MaskingPatternDescription,
            },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'Set hidden property',
            //     Value : HideSet
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'BAdI hidden property',
            //     Value : HideBadi,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'HideSet',
            //     Value : HideSet,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'HideBadi',
            //     Value : HideBadi,
            // },
        ],

    },
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data  : [

            {
                $Type : 'UI.DataField',
                Label : 'Set 1 Position',
                Value : Set1MaskingStartPositionVal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Set 1 Masking Character(s)',
                Value : Set1MaskingCharacters,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Set 2 Position',
                Value : Set2MaskingStartPositionVal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Set 2 Masking Character(s)',
                Value : Set2MaskingCharacters,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Set 3 Position',
                Value : Set3MaskingStartPositionVal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Set 3 Masking Character(s)',
                Value : Set3MaskingCharacters,
            },


        ],
    },
    UI.FieldGroup #GeneratedGroup3 : {
        $Type : 'UI.FieldGroupType',
        Data  : [{
            $Type : 'UI.DataField',
            Label : 'BAdI Filter',
            Value : MaskingPatternName,
        }]
    },
    UI.Facets                      : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet1',
            Label  : 'General Details',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type         : 'UI.ReferenceFacet',
            ID            : 'GeneratedFacet2',
            Label         : 'Masking Pattern Set',
            Target        : '@UI.FieldGroup#GeneratedGroup2',
            ![@UI.Hidden] : HideSet,
        // ![@UI.Hidden]: IsActiveEntity
        },
        {
            $Type         : 'UI.ReferenceFacet',
            ID            : 'GeneratedFacet3',
            Label         : 'BAdI Filter',
            Target        : '@UI.FieldGroup#GeneratedGroup3',
            ![@UI.Hidden] : HideBadi,
        }
    ]
);

annotate service.patterns with {
    MaskingPatternStrategy
    @Common.Label   : 'Strategy'
    @(Common : {
        // Text                     : PatternStrategy.name,
        // TextArrangement          : #TextOnly,
        ValueListWithFixedValues : true,
        ValueList                : {
            SearchSupported : true,
            CollectionPath  : 'strategies',
            Parameters      : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : MaskingPatternStrategy_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'name',
                },
            ]
        }
    });


    Set1MaskingStartPositionVal
    @UI.Placeholder : 'Enter position for Set 1';

    Set1MaskingCharacters
    @UI.Placeholder : 'Enter Masking Characters for Set 1';

    Set2MaskingStartPositionVal
    @UI.Placeholder : 'Enter position for Set 2';

    Set2MaskingCharacters
    @UI.Placeholder : 'Enter Masking Characters for Set 2';

    Set3MaskingStartPositionVal
    @UI.Placeholder : 'Enter position for Set 3';

    Set3MaskingCharacters
    @UI.Placeholder : 'Enter Masking Characters for Set 3';
};
