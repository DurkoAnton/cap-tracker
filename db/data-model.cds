using { cuid } from '@sap/cds/common';
using sap from '@sap/cds/common';

namespace training;

// Training day 
entity Training : cuid {
    date      : Date @cds.on.insert : $now;
    muscles   : Association to many MuscleType on muscles.parent=$self; // multiple value list
    weight    : Decimal(3, 2);
    exercises : Composition of many Exercise on exercises.parent = $self; // table with exercies and results
}

// Muscle
entity MuscleType : sap.common.CodeList {
    key code : String(2);
    parent : Association to Training;
}

// Physical exercise
entity Exercise : cuid {
    muscle      : Association to one MuscleType;
    name        : String;
    description : String;
    approaches : Composition of ExerciseApproach on approaches.parent = $self;// set of approaches of the same exercise
    parent : Association to Training;
}

entity ExerciseApproach : cuid {
    number : UInt8;
    weight : Decimal(3, 2);
    repeats : UInt8; // quantity of doings
    parent : Association to Exercise;
}
