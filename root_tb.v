module root_tb();

reg [3:0] n ; // input.

wire [11:0] sq_root ; 	 // output
//wire [1:0] sq_root_int ; // output
//wire [9:0] sq_root_dp ;  // output
integer i;

initial begin
	for (i=0;i<=15;i=i+1)
	begin
	#5 n=i;
	end 
end
root inst(
	.n(n),
	.sq_root(sq_root)
	//.sq_root_int(sq_root_int),
	//.sq_root_dp(sq_root_dp)
	);

endmodule
