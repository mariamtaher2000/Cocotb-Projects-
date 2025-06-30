module pri_enc(
  input en,
  input [7:0] D,
  output reg [2:0] Q
  );
  
  always@(*)
  begin
    if(en==1)
      begin
        if(D[7]==1) Q=3'b111;
        else if(D[6]==1) Q=3'b110;
        else if(D[5]==1) Q=3'b101;
        else if(D[4]==1) Q=3'b100;
        else if(D[3]==1) Q=3'b011;
        else if(D[2]==1) Q=3'b010;
        else if(D[1]==1) Q=3'b001;
        else if(D[0]==1) Q=3'b000;
        else
        Q=3'b000;
      end
    else Q=3'b000;
  end
  
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1,pri_enc);
end
  
endmodule
