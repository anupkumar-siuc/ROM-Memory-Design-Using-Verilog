`timescale 1ns/1ns
module romtb ();
integer i,j;
reg [3:0]n;
reg sign;
wire [7:0]square;

initial
$monitor ("sign=%d n=%d square = %d",sign,n,square );

initial
begin
	
	for (i=0;i<=15;i=i+1) begin
	 #5 sign=0; n=i ; end

	for (j=1;j<=8;j=j+1) begin
	 #5 sign=1; n=j ; end

	
end

rom inst(
	.sign(sign),
	.n(n),
	.square(square)	
	) ;

endmodule
