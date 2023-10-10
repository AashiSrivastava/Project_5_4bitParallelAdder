//Developed by: Aashi Srivastava
// TITLE: 4-bit parallel adder test bench
// Date: 10.10.23, 12.09 IST
module parallel_adder_tb (
    

);
    reg [3:0]in1,in2;
    wire [3:0] sum;
    wire carry_out;
    reg carry_in;

    parallel_adder p(
    sum,carry_out,in1,in2,carry_in
);    

initial begin
    $dumpfile("parallel_adder.vcd");
    $dumpvars(0, parallel_adder_tb);
    $monitor($time, "sum=%b carry_out=%b in1=%b in2=%b carry_in=%b",sum,carry_out,in1,in2,carry_in);
        #40 $finish;
    end
initial begin
    in1=4'b0011;
    in2=4'b1101;
    carry_in=1'b0;
end
endmodule