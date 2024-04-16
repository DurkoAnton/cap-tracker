using training from '../db/data-model';

service TrainingService {
    @odata.draft.enabled
    entity Training as projection on training.Training;
    entity MuscleType as projection on training.MuscleType;
}
annotate TrainingService.MuscleType with
@Capabilities : {
    FilterRestrictions : {FilterExpressionRestrictions : [
   
    {
        Property           : 'code',
        AllowedExpressions : 'MultiValue'
    },],
}};