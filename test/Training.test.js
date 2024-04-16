const cds = require('@sap/cds')
const { expect, GET } = require('chai')

describe('my test suite', ()=>{
  const { GET, POST } = cds.test();
    it ('should test', async() => {
     const db= await cds.connect.to('db');
console.log(await db.run(SELECT.from(cds.entities.Training)))
//      //console.log(await GET('https://www.google.com'));
       // const TrainingService = await cds.connect.to('TrainingService');
      //  console.log(TrainingService)
        //const {Training} = TrainingService.entities;
        //expect(await SELECT.from(Training)).to.eql([]);

    })
  })