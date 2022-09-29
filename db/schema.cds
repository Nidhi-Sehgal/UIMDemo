namespace uim;

type BusinessKey : String(10);
type char1 : String(1);
type char10 : String(10);

entity flactions {
    key FieldLevelActionIdentifier     : String(40);
        FieldLevelActionIsMask         : Boolean;
        MaskingPatternName             : Association to patterns;
        FieldLevelActionIsHide         : Boolean;
        FieldLevelActionIsDisable      : Boolean;
        FieldLevelActionIsClear        : Boolean;
        FldLvlActionIsAnonymization    : Boolean;
        AnonymizationPatternName       : char10;
        FldLvlActionIsPseudonymization : Boolean;
        PseudonymizationPatternName    : char10;
        FallbackPatternName            : Association to fallbackPatterns;
        FallbackPatternIsUsed          : Boolean;
        UI5NavigationIsAllowed         : Boolean;
        CRMNavigationIsAllowed         : Boolean;
        CRMActionIsAllowed             : Boolean;
        FieldLevelActionDescription    : localized String(1024);
};

entity patterns {
    key MaskingPatternName          : String(10);
        MaskingPatternStrategy      : Association to strategies;
        Set1MaskingStartPositionVal : Integer;
        Set1MaskingCharacters       : String(40);
        Set2MaskingStartPositionVal : Integer;
        Set2MaskingCharacters       : String(40);
        Set3MaskingStartPositionVal : Integer;
        Set3MaskingCharacters       : String(40);
        EmptyFieldIsMasked          : Boolean default true;
        MaskingPatternDescription   : localized String(128);
};


extend patterns with {
    virtual HideSet  : Boolean;
    virtual HideBadi : Boolean;
};

entity fallbackPatterns {
        // key ID                         : UUID;
    key FallbackPatternName        : String(10);
        FallbackPatternType        : Association to edmCoreTypes;
        FallbackPatternValue       : String(40);
        FallbackPatternDescription : localized String(40)
};

entity strategies {
    key ID   : String(4);
        name : String(40);
};

entity edmCoreTypes {
    key ID : String(30);
    Description : String(60);
}
