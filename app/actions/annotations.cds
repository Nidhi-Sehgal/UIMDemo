using flactions as service from '../../srv/schema_srv';

annotate service.flactions with {
    FieldLevelActionIdentifier  @title : 'Field Level Action';
    FieldLevelActionDescription @title : 'Description'
};

annotate service.flactions with @(
    UI.SelectionFields : [FieldLevelActionIdentifier],
    UI.LineItem        : [
        {
            $Type : 'UI.DataField',
            Label : 'Field Level Action',
            Value : FieldLevelActionIdentifier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mask',
            Value : FieldLevelActionIsMask,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'MaskingPatternName_MaskingPatternName',
            Value : MaskingPatternName_MaskingPatternName,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'FieldLevelActionIsHide',
            Value : FieldLevelActionIsHide,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'FieldLevelActionIsDisable',
            Value : FieldLevelActionIsDisable,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'FieldLevelActionIsDisable',
            Value : FieldLevelActionIsClear,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'FieldLevelActionIsDisable',
            Value : FldLvlActionIsAnonymization,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'FieldLevelActionIsDisable',
            Value : AnonymizationPatternName,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'FieldLevelActionIsDisable',
            Value : FldLvlActionIsPseudonymization,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'FieldLevelActionIsDisable',
            Value : PseudonymizationPatternName,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : FieldLevelActionDescription,
        },
    ],
    UI.HeaderInfo      : {
        TypeName       : 'Action',
        TypeNamePlural : 'Actions',
        Title          : {
            $Type : 'UI.DataField',
            Value : FieldLevelActionIdentifier
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : FieldLevelActionDescription
        }
    },
);


annotate service.patterns with @(

UI.FieldGroup #PatternQuickView : {Data : [
    {
        Label : 'Masking Pattern',
        $Type : 'UI.DataField',
        Value : MaskingPatternName
    },
    {
        Label : 'Strategy',
        $Type : 'UI.DataField',
        Value : MaskingPatternStrategy_ID
    },
    {
        Label : 'Description',
        $Type : 'UI.DataField',
        Value : MaskingPatternDescription
    },
    {
        Label : 'Set 1 Position',
        $Type : 'UI.DataField',
        Value : Set1MaskingStartPositionVal
    },
    {
        Label : 'Set 1 Masking Character(s)',
        $Type : 'UI.DataField',
        Value : Set1MaskingCharacters
    },
    {
        Label : 'Set 2 Position',
        $Type : 'UI.DataField',
        Value : Set2MaskingStartPositionVal
    },
    {
        Label : 'Set 2 Masking Character(s)',
        $Type : 'UI.DataField',
        Value : Set2MaskingCharacters
    },
    {
        Label : 'Set 3 Position',
        $Type : 'UI.DataField',
        Value : Set3MaskingStartPositionVal
    },
    {
        Label : 'Set 3 Masking Character(s)',
        $Type : 'UI.DataField',
        Value : Set3MaskingCharacters
    },
    {
        Label : 'BAdI Filter',
        $Type : 'UI.DataField',
        Value : MaskingPatternName
    }
],

}, );

annotate service.fallbackPatterns with @(

UI.FieldGroup #fallbackPatternQuickView : {Data : [
    {
        Label : 'Dummy Pattern',
        $Type : 'UI.DataField',
        Value : FallbackPatternName
    },
    {
        Label : 'Dummy Pattern Type',
        $Type : 'UI.DataField',
        Value : FallbackPatternType_ID
    },
    {
        Label : 'Dummy Value',
        $Type : 'UI.DataField',
        Value : FallbackPatternValue
    },
    {
        Label : 'Description',
        $Type : 'UI.DataField',
        Value : FallbackPatternDescription
    },
]});


annotate service.patterns with @(UI.QuickViewFacets : [{
    $Type  : 'UI.ReferenceFacet',
    Target : '@UI.FieldGroup#PatternQuickView',
}]);

annotate service.fallbackPatterns with @(UI.QuickViewFacets : [{
    $Type  : 'UI.ReferenceFacet',
    Target : '@UI.FieldGroup#fallbackPatternQuickView',
}]);


annotate service.flactions with @(

    UI.FieldGroup #FieldLevelAction : {
        $Type              : 'UI.FieldGroupType',
        ![@Common.Heading] : 'Field Level Actions',

        Data               : [

            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : FieldLevelActionDescription
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mask',
                Value : FieldLevelActionIsMask,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Masking Pattern',
                Value : MaskingPatternName_MaskingPatternName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Disable',
                Value : FieldLevelActionIsDisable,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Hide',
                Value : FieldLevelActionIsHide,
            },

            {
                $Type : 'UI.DataField',
                Label : 'Clear',
                Value : FieldLevelActionIsClear,
            },

        ],
    },
    UI.FieldGroup #WebClient        : {
        $Type              : 'UI.FieldGroupType',
        ![@Common.Heading] : 'Web Client UI Specific Actions',
        Data               : [
            {
                $Type : 'UI.DataField',
                Label : 'Navigation Allowed',
                Value : CRMNavigationIsAllowed,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Allow One Click Action',
                Value : CRMActionIsAllowed,
            },


        ],
    },
    UI.FieldGroup #Sapui5Actions    : {
        $Type              : 'UI.FieldGroupType',
        ![@Common.Heading] : 'SAP UI5 and SAP Fiori Specific Actions',
        Data               : [
            {
                $Type : 'UI.DataField',
                Label : 'Navigation Allowed',
                Value : UI5NavigationIsAllowed,

            },
            {
                $Type : 'UI.DataField',
                Label : 'Display Dummy value',
                Value : FallbackPatternIsUsed,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Dummy Pattern',
                Value : FallbackPatternName_FallbackPatternName,
            },

        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Anon',
        //     Value : ANON,
        //     ![@UI.Hidden],
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Anon pattern',
        //     Value : ANON_PATTERN,
        //     ![@UI.Hidden],
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Pseudo',
        //     Value : PSEUDO,
        //     ![@UI.Hidden],
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'Pseudo Pattern',
        //     Value : PSEUDO_PATTERN,
        //     ![@UI.Hidden],
        // },

        ],
    },
    UI.Facets                       : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'FieldLevelAction',
            Label  : 'Field Level Action',
            Target : '@UI.FieldGroup#FieldLevelAction',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'WebClient',
            Label  : 'Web Client UI Specific Actions',
            Target : '@UI.FieldGroup#WebClient',
        },

        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'Sapui5Actions',
            Label  : 'SAP UI5 and SAP Fiori Specific Actions',
            Target : '@UI.FieldGroup#Sapui5Actions',
        },
    ]
);

annotate service.flactions with {
    MaskingPatternName
    @Common.Label : 'Masking Pattern'
    @(Common : {ValueList : {
        CollectionPath  : 'patterns',
        SearchSupported : true,
        Parameters      : [
            {
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : MaskingPatternName_MaskingPatternName,
                ValueListProperty : 'MaskingPatternName',
            },
            {
                $Type             : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'MaskingPatternDescription',
            }
        ],
    },

    });
    FallbackPatternName
    @Common.Label : 'Dummy Pattern'
    @(Common : {ValueList : {
        CollectionPath  : 'fallbackPatterns',
        SearchSupported : true,
        Parameters      : [
            {
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : FallbackPatternName_FallbackPatternName,
                ValueListProperty : 'FallbackPatternName',
            },
            {
                $Type             : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FallbackPatternDescription',
            }
        ],
    },

    });
}
