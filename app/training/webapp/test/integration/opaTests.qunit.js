sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'training/test/integration/FirstJourney',
		'training/test/integration/pages/TrainingList',
		'training/test/integration/pages/TrainingObjectPage'
    ],
    function(JourneyRunner, opaJourney, TrainingList, TrainingObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('training') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTrainingList: TrainingList,
					onTheTrainingObjectPage: TrainingObjectPage
                }
            },
            opaJourney.run
        );
    }
);