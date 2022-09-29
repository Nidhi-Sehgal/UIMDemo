sap.ui.define(
    ["sap/fe/core/AppComponent"],
    function (Component) {
        "use strict";

        return Component.extend("fallback.Component", {
            metadata: {
                manifest: "json"
            }
        });
    }
);