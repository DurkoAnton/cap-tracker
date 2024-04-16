const cds = require('@sap/cds')

module.exports = 
class TrainingService extends cds.ApplicationService {
    async init() {

            const { Training} = this.entities;

            this.before('READ', Training, async req=>{
                console.log('123')
            })
            return super.init();
        }
    }