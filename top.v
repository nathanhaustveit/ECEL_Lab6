// Implement top level module
module top(
    input [7:0] sw,
    output [5:0] led
);

light first(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
    );
    
adder second(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
    );
    
wire trigger;    
    
full_adder lsb(
    .A(sw[4]),
    .B(sw[6]),
    .cin(0),
    .Y(led[3]),
    .cout(trigger)
    );
    
full_adder msb(
    .A(sw[5]),
    .B(sw[7]),
    .cin(trigger),
    .cout(led[5]),
    .Y(led[4])
    );

endmodule