// This ROM stores the square root of a number n.
module root (n, sq_root) ;
input [3:0] n ; // Unsigned number.
output [11:0] sq_root ; // Result = Square root of n.
reg [11:0] sq_root ; // Msb 2 bits (sq_root_int)is the integer part and the
// other bits (sq_root_dp) are after the decimal point.
wire [1:0] sq_root_int ;
wire [9:0] sq_root_dp ;
always @ (n)
begin
case (n) // Output "square root" .
0: sq_root <= 0 ;
1: sq_root <= {2'd1,10'd000} ;
2: sq_root <= {2'd1,10'd414} ;
3: sq_root <= {2'd1,10'd732} ;
4: sq_root <= {2'd2,10'd000} ;
5: sq_root <= {2'd2,10'd236} ;
6: sq_root <= {2'd2,10'd449} ;
7: sq_root <= {2'd2,10'd645} ;
8: sq_root <= {2'd2,10'd828} ;
9: sq_root <= {2'd3,10'd000} ;
10:sq_root <= {2'd3,10'd162} ;
11:sq_root <= {2'd3,10'd317} ;
12:sq_root <= {2'd3,10'd464} ;
13:sq_root <= {2'd3,10'd606} ;
14:sq_root <= {2'd3,10'd742} ;
15:sq_root <= {2'd3,10'd873} ;

default : sq_root <= 0 ; // Clear the result.
endcase
end
assign sq_root_int = sq_root[11:10];
assign sq_root_dp = sq_root[9:0] ;
endmodule
