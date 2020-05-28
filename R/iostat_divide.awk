#!/usr/bin/env awk

BEGIN{
	t=1
	print "Time r_s" > "r_s";
	print "Time rkB_s" > "rkB_s";
	print "Time rrqm_s" > "rrqm_s";
	print "Time per_rrqm" > "per_rrqm";
	print "Time r_await" > "r_await";
	print "Time rareq-sz" > "rareq-sz";
	print "Time w_s" > "w_s";
	print "Time wkB_s" > "wkB_s";
	print "Time wrqm_s" > "wrqm_s";
	print "Time per_wrqm" > "per_wrqm";
	print "Time w_await" > "w_await";
	print "Time wareq-sz" > "wareq-sz";
	print "Time d_s" > "d_s";
	print "Time dkB_s" > "dkB_s";
	print "Time drqm_s" > "drqm_s";
	print "Time per_drqm" > "per_drqm";
	print "Time d_await" > "d_await";
	print "Time dareq-sz" > "dareq-sz";
	print "Time f_s" > "f_s";
	print "Time f_await" > "f_await";
	print "Time aqu-sz" > "aqu-sz";
	print "Time per_util" > "per_util";
}

$1=="dm-0"{
	print t,$2 >> "r_s";
	print t,$3 >> "rkB_s";
	print t,$4 >> "rrqm_s";
	print t,$5 >> "per_rrqm";
	print t,$6 >> "r_await";
	print t,$7 >> "rareq-sz";
	print t,$8 >> "w_s";
	print t,$9 >> "wkB_s";
	print t,$10 >> "wrqm_s";
	print t,$11 >> "per_wrqm";
	print t,$12 >> "w_await";
	print t,$13 >> "wareq-sz";
	print t,$14 >> "d_s";
	print t,$15 >> "dkB_s";
	print t,$16 >> "drqm_s";
	print t,$17 >> "per_drqm";
	print t,$18 >> "d_await";
	print t,$19 >> "dareq-sz";
	print t,$20 >> "f_s";
	print t,$21 >> "f_await";
	print t,$22 >> "aqu-sz";
	print t,$23 >> "per_util";
	t+=1;
}
