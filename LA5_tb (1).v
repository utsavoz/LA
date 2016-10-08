`timescale 1ns / 1ps



module LA5_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] address;
	/*reg [31:0] data_in11;
	reg [31:0] data_in12;
	reg [31:0] data_in13;
	reg [31:0] data_in14;
	reg [31:0] data_in15;
	reg [31:0] data_in21;
	reg [31:0] data_in22;
	reg [31:0] data_in23;
	reg [31:0] data_in24;
	reg [31:0] data_in25;
	reg [31:0] data_in31;
	reg [31:0] data_in32;
	reg [31:0] data_in33;
	reg [31:0] data_in34;
	reg [31:0] data_in35;
	reg [31:0] data_in41;
	reg [31:0] data_in42;
	reg [31:0] data_in43;
	reg [31:0] data_in44;
	reg [31:0] data_in45;
	reg [31:0] data_in51;
	reg [31:0] data_in52;
	reg [31:0] data_in53;
	reg [31:0] data_in54;
	reg [31:0] data_in55;*/

	// Outputs
	wire [31:0] identity11;
	wire [31:0] identity12;
	wire [31:0] identity13;
	wire [31:0] identity14;
	wire [31:0] identity15;
	wire [31:0] identity21;
	wire [31:0] identity22;
	wire [31:0] identity23;
	wire [31:0] identity24;
	wire [31:0] identity25;
	wire [31:0] identity31;
	wire [31:0] identity32;
	wire [31:0] identity33;
	wire [31:0] identity34;
	wire [31:0] identity35;
	wire [31:0] identity41;
	wire [31:0] identity42;
	wire [31:0] identity43;
	wire [31:0] identity44;
	wire [31:0] identity45;
	wire [31:0] identity51;
	wire [31:0] identity52;
	wire [31:0] identity53;
	wire [31:0] identity54;
	wire [31:0] identity55;
	wire [31:0] identity11d;
	wire [31:0] identity12d;
	wire [31:0] identity13d;
	wire [31:0] identity14d;
	wire [31:0] identity15d;
	wire [31:0] identity21d;
	wire [31:0] identity22d;
	wire [31:0] identity23d;
	wire [31:0] identity24d;
	wire [31:0] identity25d;
	wire [31:0] identity31d;
	wire [31:0] identity32d;
	wire [31:0] identity33d;
	wire [31:0] identity34d;
	wire [31:0] identity35d;
	wire [31:0] identity41d;
	wire [31:0] identity42d;
	wire [31:0] identity43d;
	wire [31:0] identity44d;
	wire [31:0] identity45d;
	wire [31:0] identity51d;
	wire [31:0] identity52d;
	wire [31:0] identity53d;
	wire [31:0] identity54d;
	wire [31:0] identity55d;
	
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	LA5 uut (
		.clk(clk), 
		.address(address),
		.data_out(data_out),
		.reset(reset),
		/*.data_in11(data_in11), 
		.data_in12(data_in12), 
		.data_in13(data_in13), 
		.data_in14(data_in14), 
		.data_in15(data_in15), 
		.data_in21(data_in21), 
		.data_in22(data_in22), 
		.data_in23(data_in23), 
		.data_in24(data_in24), 
		.data_in25(data_in25), 
		.data_in31(data_in31), 
		.data_in32(data_in32), 
		.data_in33(data_in33), 
		.data_in34(data_in34), 
		.data_in35(data_in35), 
		.data_in41(data_in41), 
		.data_in42(data_in42), 
		.data_in43(data_in43), 
		.data_in44(data_in44), 
		.data_in45(data_in45), 
		.data_in51(data_in51), 
		.data_in52(data_in52), 
		.data_in53(data_in53), 
		.data_in54(data_in54), 
		.data_in55(data_in55), */
		.identity11(identity11), 
		.identity12(identity12), 
		.identity13(identity13), 
		.identity14(identity14), 
		.identity15(identity15), 
		.identity21(identity21), 
		.identity22(identity22), 
		.identity23(identity23), 
		.identity24(identity24), 
		.identity25(identity25), 
		.identity31(identity31), 
		.identity32(identity32), 
		.identity33(identity33), 
		.identity34(identity34), 
		.identity35(identity35), 
		.identity41(identity41), 
		.identity42(identity42), 
		.identity43(identity43), 
		.identity44(identity44), 
		.identity45(identity45), 
		.identity51(identity51), 
		.identity52(identity52), 
		.identity53(identity53), 
		.identity54(identity54), 
		.identity55(identity55), 
		.identity11d(identity11d), 
		.identity12d(identity12d), 
		.identity13d(identity13d), 
		.identity14d(identity14d), 
		.identity15d(identity15d), 
		.identity21d(identity21d), 
		.identity22d(identity22d), 
		.identity23d(identity23d), 
		.identity24d(identity24d), 
		.identity25d(identity25d), 
		.identity31d(identity31d), 
		.identity32d(identity32d), 
		.identity33d(identity33d), 
		.identity34d(identity34d), 
		.identity35d(identity35d), 
		.identity41d(identity41d), 
		.identity42d(identity42d), 
		.identity43d(identity43d), 
		.identity44d(identity44d), 
		.identity45d(identity45d), 
		.identity51d(identity51d), 
		.identity52d(identity52d), 
		.identity53d(identity53d), 
		.identity54d(identity54d), 
		.identity55d(identity55d)
	);
	
	always #100 clk = ~clk;

	initial 
	begin
		clk = 0;
		reset=0;
		
		#50;
		address = 5'd0;
		
		#200;
		address = 5'd1;
		
		#200;
		address = 5'd2;
		
		#200;
		address = 5'd3;
		
		#200;
		address = 5'd4;
		
		#200;
		address = 5'd5;
		
		#200;
		address = 5'd6;
		
		#200;
		address = 5'd7;
		
		#200;
		address = 5'd8;
		#200;
		address = 5'd9;
		#200;
		address = 5'd10;
		#200;
		address = 5'd11;
		#200;
		address = 5'd12;
		
		#200;
		address = 5'd13;
		
		#200;
		address = 5'd14;
		#200;
		address = 5'd15;
		#200;
		address = 5'd16;
		#200;
		address = 5'd17;
		#200;
		address = 5'd18;
		#200;
		address = 5'd19;
		#200;
		address = 5'd20;
		#200;
		address = 5'd21;
		#200;
		address = 5'd22;
		#200;
		address = 5'd23;
		#200;
		address = 5'd24;
		#200;
		address = 5'd25;
		#200;
		reset=1'b1;
		#200;
		
		reset=1'b0;
		
		
		/*data_in11 = 0;
		data_in12 = 0;
		data_in13 = 0;
		data_in14 = 0;
		data_in15 = 0;
		data_in21 = 0;
		data_in22 = 0;
		data_in23 = 0;
		data_in24 = 0;
		data_in25 = 0;
		data_in31 = 0;
		data_in32 = 0;
		data_in33 = 0;
		data_in34 = 0;
		data_in35 = 0;
		data_in41 = 0;
		data_in42 = 0;
		data_in43 = 0;
		data_in44 = 0;
		data_in45 = 0;
		data_in51 = 0;
		data_in52 = 0;
		data_in53 = 0;
		data_in54 = 0;
		data_in55 = 0;*/

		/*data_in11 = 32'd1;
		data_in12 = 32'd0;
		data_in13 = 32'd0;
		data_in14 = 32'd0;
		data_in15 = 32'd0;
		data_in21 = 32'd0;
		data_in22 = 32'd1;
		data_in23 = 32'd0;
		data_in24 = 32'd0;
		data_in25 = 32'd0;
		data_in31 = 32'd0;
		data_in32 = 32'd0;
		data_in33 = 32'd1;
		data_in34 = 32'd2;
		data_in35 = 32'd3;
		data_in41 = 32'd0;
		data_in42 = 32'd0;
		data_in43 = 32'd0;
		data_in44 = 32'd1;
		data_in45 = 32'd4;
		data_in51 = 32'd0;
		data_in52 = 32'd0;
		data_in53 = 32'd5;
		data_in54 = 32'd6;
		data_in55 = 32'd0;*/

	end
      
endmodule


/*1111111111111111111111

  data_in11 = 32'd1;
		data_in12 = 32'd0;
		data_in13 = 32'd0;
		data_in14 = 32'd0;
		data_in15 = 32'd0;
		data_in21 = 32'd0;
		data_in22 = 32'd1;
		data_in23 = 32'd0;
		data_in24 = 32'd0;
		data_in25 = 32'd0;
		data_in31 = 32'd0;
		data_in32 = 32'd0;
		data_in33 = 32'd5;
		data_in34 = 32'd15;
		data_in35 = 32'd10;
		data_in41 = 32'd0;
		data_in42 = 32'd0;
		data_in43 = 32'd0;
		data_in44 = 32'd3;
		data_in45 = 32'd6;
		data_in51 = 32'd0;
		data_in52 = 32'd0;
		data_in53 = 32'd2;
		data_in54 = 32'd0;
		data_in55 = 32'd8;
		
*/
