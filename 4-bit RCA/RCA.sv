module top(
  input [3:0] a,b,
  input [3:0] sout,
  input cin, 
  output cout
  );
  
wire c0,c1,c2;
  
full_adder f0 (a[0], b[0], cin,sout[0], c0);
full_adder f1 (a[1], b[1], c0, sout[1], c1);
full_adder f2 (a[2], b[2], c1, sout[2], c2);
full_adder f3 (a[3], b[3], c2, sout[3], cout);

  
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1,top);
end
  
endmodule
