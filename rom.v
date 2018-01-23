// This ROM stores the square of a number n.
module rom (n, sign, square);
input  [3:0] n ; // signed number.
input sign ; // signed number if it is high and unsigned otherwise.
output [7:0] square ; // Result = n x n.
reg [7:0] square ;
always @ (n or sign)
begin
if (sign==0) // Output "square" if the input is unsigned.
	begin
case (n)
	0 : square <= 0 ;
	1 : square <= 1 ;
	2 : square <= 4 ;
	3 : square <= 9 ;
	4 : square <= 16 ;
	5 : square <= 25 ;
	6 : square <= 36 ;
	7 : square <= 49 ;
	8 : square <= 64 ;
	9 : square <= 81;
	10 : square <= 100;
	11 : square <= 121;
	12 : square <= 144;
	13 : square <= 169 ;
	14 : square <= 196 ;
	15 : square <= 225 ;
default :
	square <= 0 ;
	endcase
	end

else
	begin
case (n)
	// Clear the result.
	// Output "square" if the input is unsigned.
	0 : square <= 0 ;
	1 : square <= 1 ;
	2 : square <= 4 ;
	3 : square <= 9 ;
	4 : square <= 16 ;
	5 : square <= 25 ;
	6 : square <= 36 ;
	7 : square <= 49 ;
	8 : square <= 64 ;

	default :
	square <= 0 ;
	// Clear the result.
	endcase
	end
end
endmodule
