create table pga_tour_stats_2017(
	player varchar primary key,
	rounds_played_17 float,
	points_17 float,
	avg_score_17 float,
	wins_17 float,
	top_tens_17 float,
	avg_carry_distance_17 float,
	sg_putting_per_round_17 float
);

create table pga_tour_stats_2018(
	player varchar primary key,
	rounds_played_18 float,
	points_18 float,
	avg_score_18 float,
	wins_18 float,
	top_tens_18 float,
	avg_carry_distance_18 float,
	sg_putting_per_round_18 float
);

select * from pga_tour_stats_2017;

select * from pga_tour_stats_2018;

-- Run this select statement last to verify that the tables can be joined --
select pga_tour_stats_2017.player, pga_tour_stats_2017.rounds_played_17, pga_tour_stats_2017.points_17, pga_tour_stats_2017.avg_score_17,
pga_tour_stats_2018.rounds_played_18, pga_tour_stats_2018.points_18, pga_tour_stats_2018.avg_score_18
from pga_tour_stats_2017
inner join pga_tour_stats_2018 on pga_tour_stats_2017.player=pga_tour_stats_2018.player;
