module mrge(
    input [15:0] in1,in2,in3,in4,in5,
    output reg [15:0] out1,out2,out3,out4,out5,
    input [1:0]mod,
  input clk
    );
reg [15:0]dat1,dat2,dat3,dat4,dat5;
reg [15:0]swap1,swap2,swap3,swap4;
reg [15:0] o1,o2,o3,o4,o5;

always @ (posedge(clk))
begin
 if(mod == 2'b00)
 begin
  if(in4<in5)
  begin
   dat1 = in4;
   dat2 = in5;
   dat3 = in3;
  end
  else
  begin
   dat1 = in5;
   dat2 = in4;
   dat3 = in3;
  end
  if(in1<in2)
  begin
   dat4 = in1;
   dat5 = in2;
  end
  else
  begin
   dat4 = in2;
   dat5 = in1;
  end
 end
 if(mod == 2'b01)
 begin
  if(dat1<dat3)
  begin
   if(dat2<dat3)
   begin
    dat1 = dat1;
    dat2 = dat2;
    dat3 = dat3;
   end
   else
   begin
    swap1 = dat3;
    dat3 = dat2;
    dat2 = swap1;
    dat1 = dat1;
   end
  end
  else
  begin
   swap2 = dat1;
   swap3 = dat2;
   dat1 = dat3;
   dat2 = swap2;
   dat3 = swap3;
  end
 end
 if(mod == 2'b10)
 begin
 if(dat1>dat4)
 begin
  out1 = dat4;
  if(dat1>dat5)
  begin
   out2 = dat5;
   out3 = dat1;
   out4 = dat2;
   out5 = dat3;
  end
  else
  begin
   out2 = dat1;
   if(dat5<dat2)
   begin
    out3 = dat5;
    out4 = dat2;
    out5 = dat3;
   end
   else
   begin
    out3 = dat2;
    if(dat5<dat3)
    begin
     out4 = dat5;
     out5 = dat3;
    end
    else
    begin
     out4 = dat3;
     out5 = dat5;
    end
   end
   end
  end
  else
  begin
   out1 = dat1;
   if(dat2>dat4)
   begin
    out2 = dat4;
    if(dat2>dat5)
    begin
     out3 = dat5;
     out4 = dat2;
     out5 = dat3;
    end
    else
    begin
     out3 = dat2;
     if(dat3>dat5)
     begin
      out4 = dat5;
      out5 = dat3;
     end
     else
     begin
      out4 = dat3;
      out5 = dat5;
     end
    end
   end
   else
   begin
    out2 = dat2;
    if(dat4>dat3)
    begin
     out3 = dat3;
     out4 = dat4;
     out5 = dat5;
    end
    else
    begin
     out3 = dat4;
     if(dat3>dat5)
     begin
      out4 = dat5;
      out5 = dat3;
     end
     else
     begin
      out4 = dat3;
      out5 = dat5;
     end
    end
   end
  end
 end
end
endmodule