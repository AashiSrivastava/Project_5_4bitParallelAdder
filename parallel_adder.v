//Developed by: Aashi Srivastava
// TITLE: 4-bit parallel adder
// Date: 10.10.23, 12.09 IST
module parallel_adder (
    sum,carry_out,in1,in2,carry_in
);
    input [3:0] in1, in2;
    output [3:0]sum;
    output carry_out;
    input carry_in;
    wire [2:0] wire1;

    full_adder_CA f1(sum[0],wire1[0],in1[0],in2[0],carry_in);
    
    full_adder_CA f2(sum[1],wire1[1],in1[1],in2[1],wire1[0]);
    
    full_adder_CA f3(sum[2],wire1[2],in1[2],in2[2],wire1[1]);
    
    full_adder_CA f4(sum[3],carry_out,in1[3],in2[3],wire1[2]);

endmodule

module full_adder_CA(
    sum,carry_out,in1,in2,carry_in
);
input in1,in2, carry_in;
output sum, carry_out;
wire wire1, wire2, wire3;
assign sum=(in1^in2)^carry_in;
assign carry_out=(in1 & in2)|(in2 & carry_in)|(carry_in & in1);
endmodule