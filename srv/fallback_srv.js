const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const { fallbackPatterns, edmCoreTypes, FallbackPatternOdata } = this.entities;
    const service = await cds.connect.to('Config');

    this.on('READ', FallbackPatternOdata, request => {
        return service.tx(request).run(request.query);
    });

    //on CREATE
    this.after('CREATE', fallbackPatterns, (fb,request) => {
        const fallbackdata = request.data;
        console.log(request.query);

        //remote S4 save
        cds.env.features.fetch_csrf = true;
        return service.send({
            method: 'POST',
            path: 'C_UIMFallbackPattern',
            data: 
            {
                FallbackPatternName: fallbackdata.FallbackPatternName,
                FallbackPatternType: fallbackdata.FallbackPatternType_ID,
                FallbackPatternValue: fallbackdata.FallbackPatternValue,
            },
            headers: { "Content-Type": "application/json"  } 
        });
    });
    //on UPDATE
    this.after('UPDATE', fallbackPatterns, (fb,request) => {
        const fallbackdata = request.data;
        console.log(request.query);

        //remote S4 update
        cds.env.features.fetch_csrf = true;
        return service.send({
            method: 'PATCH',
            path: 'C_UIMFallbackPattern',
            data: 
            {
                FallbackPatternName: fallbackdata.FallbackPatternName,
                FallbackPatternType: fallbackdata.FallbackPatternType_ID,
                FallbackPatternValue: fallbackdata.FallbackPatternValue,
            },
            headers: { "Content-Type": "application/json"  } 
        });
    });

});