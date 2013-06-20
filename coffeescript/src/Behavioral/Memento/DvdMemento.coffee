define [],() ->
	class DvdMemento

		constructor : (@cache = {}) ->
		setState : (toSave) -> @cache = JSON.parse(JSON.stringify(toSave))
		getState : -> @cache

