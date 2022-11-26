using uim as uim from '../db/schema';
using {Config as Config} from './external/Config.csn';

service fallbackPatterns {
    @odata.draft.enabled : true
    entity fallbackPatterns as projection on uim.fallbackPatterns;

    entity edmCoreTypes     as projection on uim.edmCoreTypes;

    @cds.persistence.exists
    entity FallbackPatternOdata as projection on Config.C_UIMFallbackPattern {
        key FallbackPatternName,
            FallbackPatternType,
            FallbackPatternValue,
            to_UIMFallbackPatternTextTP.FallbackPatternDescription as FallbackPatternDescription
    };
}