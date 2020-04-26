-- create condition REQUIRES_CITY_HAS_LOCALSTADIUM, that requires a city has a local stadium
insert into Requirements(RequirementId, RequirementType)
values('REQUIRES_CITY_HAS_LOCALSTADIUM', 'REQUIREMENT_CITY_HAS_BUILDING');


insert into RequirementSets
values('REQUIRES_CITY_HAS_LOCALSTADIUM','REQUIREMENT_CITY_HAS_BUILDING');

insert into RequirementArguments(requirementid, name, value)
values('REQUIRES_CITY_HAS_LOCALSTADIUM','BuildingType','BUILDING_LOCAL_STADIUM');


-- If a city has a local stadium, trigger CITY_HAS_STADIUM_REQUIREMENTS, which will trigger policy card Sports Media.

insert into RequirementSetRequirements
values('CITY_HAS_STADIUM_REQUIREMENTS','REQUIRES_CITY_HAS_LOCALSTADIUM');

update RequirementSets
set RequirementSetType='REQUIREMENTSET_TEST_ANY'
where RequirementSetId='CITY_HAS_STADIUM_REQUIREMENTS';



