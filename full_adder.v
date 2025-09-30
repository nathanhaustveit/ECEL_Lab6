// Implement module called full_adder
module full_adder(
    input A,
    input B,
    input cin,
    output Y,
    output cout
);

assign Y = ~A & B | ~A & cin | B & cin | A & ~B & ~cin;
assign cout = A & B  | A & cin | B & cin;

endmodule