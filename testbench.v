// testbench.v
module testbench;

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

ripple_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    a = 4'b0001; b = 4'b0010; cin = 0; #10;
    $display("a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);
    
    a = 4'b0110; b = 4'b0011; cin = 0; #10;
    $display("a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    a = 4'b1111; b = 4'b0001; cin = 0; #10;
    $display("a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);
    
    a = 4'b1010; b = 4'b0101; cin = 1; #10;
    $display("a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    $finish;
end

endmodule
