
module mrge_tb(

    );
    reg [1:0] mod;
    reg [15:0]dat1,dat2,dat3,dat4,dat5;
    wire [15:0] o1,o2,o3,o4,o5;
    reg clk;
    mrge dut(dat1,dat2,dat3,dat4,dat5,o1,o2,o3,o4,o5,mod,clk);
    initial
    begin
     clk=1'b1;
     forever #5 clk=~clk;
     #1000000;
    end
    initial begin
    dat1=16'd26;
    dat2=16'd16;
    dat3=16'd35;
    dat4=16'd6;
    dat5=16'd46;
    mod=2'd0;
    #10
    mod=2'd1;
    #10
    mod=2'd2;
    #100
    $finish;
    end
endmodule
