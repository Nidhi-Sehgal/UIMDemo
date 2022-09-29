using uim as uim from '../db/schema';


service flactions {
    @odata.draft.enabled : true
    entity flactions        as projection on uim.flactions;
    entity patterns         as projection on uim.patterns;
    entity fallbackPatterns as projection on uim.fallbackPatterns;
}

service patterns {
    @odata.draft.enabled : true
    entity patterns   as projection on uim.patterns;
    entity strategies as projection on uim.strategies;
}

extend projection patterns.patterns with {
    case
        when
            MaskingPatternStrategy.ID = 'BADI'
        then
            true
        else
            false
    end as HideSet : Boolean, case
                                  when
                                      MaskingPatternStrategy.ID = 'SET'
                                  then
                                      true
                                  else
                                      false
                              end as HideBadi : Boolean
}

service fallbackPatterns {
    @odata.draft.enabled : true
    entity fallbackPatterns as projection on uim.fallbackPatterns;
    entity edmCoreTypes as projection on uim.edmCoreTypes;
}
