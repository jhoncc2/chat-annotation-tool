drawing
drawText: arg1
	<deprecated>
	| tmp1 tmp2 tmp3 tmp4 tmp6 tmp8 |
	tmp6 := arg1 font.
	tmp6
		named: 'Source Sans Pro';
		size: 11.
	tmp1 := tmp6 build.
	tmp8 := arg1 text.
	tmp8
		font: tmp1;
		paint: Color white.
	tmp2 := tmp8 string: self messageModel text asString.
	tmp3 := tmp2 measure.
	tmp4 := (self extent - tmp3 textMetrics bounds extent) / 2.0.
	tmp4 := tmp4 - tmp3 textMetrics bounds origin.
	tmp2
		baseline: tmp4;
		draw