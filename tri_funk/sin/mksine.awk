# 
# x: filename( 1 to 500 )
# y: angle(y * atan2 / 180: radian)
# list angle and sin(angle)

# example 28
# $ head -n5 28
# angle sin
# 0 0
# 28 0.469472
# 56 0.829038
# 84 0.994522
# $ tail -n3 28
# 3556 -0.694658
# 3584 -0.275637
# 3600 -2.44929e-15

BEGIN{
	for (x=1; x<501; x++) {
		print "angle sin" > x
	};
	for(x=1; x < 501; x++) {
		for (y=0; y<3601; y+=x) {
			print y, sin(y * atan2(0,-0) / 180) >> x
		       	if(y + x > 3600) {
			       	print 3600, sin(3600 * atan2(0,-0) / 180) >> x
		       	}
	       	}
       	}
}

