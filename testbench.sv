////Testbench
module carry_look_ahead_16bit_tb;
reg [15:0] a,b;
reg cin;
wire [15:0] sum;
wire cout;
integer i;

  carry_look_ahead_16bit uut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
  $dumpfile("test.vcd");
  $dumpvars(0, uut);
  a=16'd0; b=16'd0; cin=1'd0;    //1st scenario
  #10 a=16'd65535; b=16'd0; cin=1'd0;    //2nd scenario
  #10 a=16'd0; b=16'd65535; cin=1'd0;    //3rd scenario
  #10 a=16'd65535; b=16'd65535; cin=1'd0;    //4th scenario
  #10 a=16'd43690; b=16'd43690; cin=1'd0;    //5th scenario
  for(i=0;i<16;i=i+1) begin
    a=i; b=16'd10; cin=1'd0;    //6th scenario
    #10;
  end
  for(i=0;i<16;i=i+1) begin
    a=16'd10; b=i; cin=1'd0;    //7th scenario
    #10;
  end
  for(i=0;i<16;i=i+1) begin
    a=i; b=i; cin=1'd0;    //8th scenario
    #10;
  end
  $finish;
end




initial
  $monitor( "A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d", a,b,cin,sum,cout);
endmodule
