*XmasDecorations-removing
removeAlarmsWithReceiver: receiver

	^ heap removeAllSuchThat: [ :each | each receiver == receiver ]