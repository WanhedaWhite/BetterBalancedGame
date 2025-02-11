INSERT INTO Requirements(RequirementId, RequirementType) VALUES
	('REQUIRES_OBJECT_0_TILES_FROM_CAPITAL', 'REQUIREMENT_PLOT_NEAR_CAPITAL');
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
	('REQUIRES_OBJECT_0_TILES_FROM_CAPITAL', 'MinDistance', '0'),
	('REQUIRES_OBJECT_0_TILES_FROM_CAPITAL', 'MaxDistance', '0');
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
	('BCC_PLOT_IS_CAPITAL_CITY_CENTER_REQSET', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
	('BCC_PLOT_IS_CAPITAL_CITY_CENTER_REQSET', 'REQUIRES_OBJECT_0_TILES_FROM_CAPITAL'),
	('BCC_PLOT_IS_CAPITAL_CITY_CENTER_REQSET', 'BCC_REQUIRES_PLOT_IS_CITY_CENTER');
INSERT INTO Requirements(RequirementId, RequirementType) VALUES
	('BCC_REQUIRES_PLOT_IS_CAPITAL_CITY_CENTER', 'REQUIREMENT_REQUIREMENTSET_IS_MET');
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
	('BCC_REQUIRES_PLOT_IS_CAPITAL_CITY_CENTER', 'RequirementSetId', 'BCC_PLOT_IS_CAPITAL_CITY_CENTER_REQSET');

UPDATE RequirementSetRequirements SET RequirementId = 'BCC_REQUIRES_PLOT_IS_CAPITAL_CITY_CENTER' WHERE RequirementId='BCC_REQUIRES_PLOT_IS_CITY_CENTER' AND RequirementSetId<>'BCC_PLOT_IS_CAPITAL_CITY_CENTER_REQSET';