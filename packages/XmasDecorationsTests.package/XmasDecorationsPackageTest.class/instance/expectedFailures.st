failures
expectedFailures

	^ #(testUnload) "This is not possible at the moment: Some extensions depend on our class definitions, and our class definitions depend on extensions. So the default Metacello approach of load order fails."