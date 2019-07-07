as yet unclassified
cleanUpWhenStartingGraalSqueak

	<preference: 'Cleanup world when starting GraalSqueak'
		category: 'Cmfcmf'
		description: 'Whether to tweak some settings and close all windows before starting GraalSqueak.'
		type: #Boolean>
	^ CleanUpWhenStartingGraalSqueak ifNil: [false]