create table pga_tour_stats_2017(
	player varchar primary key,
	rounds_played int,
	points int,
	avg_score decimal(10,2),
	wins int,
	top_tens int,
	avg_carry_distance decimal(6,2),
	sg_putting_per_round decimal(6,6)
);

create table pga_tour_stats_2018(
	player varchar primary key,
	rounds_played int,
	points int,
	avg_score decimal(10,2),
	wins int,
	top_tens int,
	avg_carry_distance decimal(6,2),
	sg_putting_per_round decimal(6,6)
);