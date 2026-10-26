module alu16 (
    input wire [15:0] a, b,
    input wire [3:0] opcode,
    output reg [15:0] result,
    output wire zero,
    output reg carry
);
    reg [16:0] tmp;
    always @* begin
        result = 16'h0000; carry = 1'b0; tmp = 17'h0;
        case (opcode)
            4'h0: begin tmp = {1'b0,a}+{1'b0,b}; result=tmp[15:0]; carry=tmp[16]; end
            4'h1: begin result=a-b; carry=(a>=b); end
            4'h2: result=a&b;
            4'h3: result=a|b;
            4'h4: result=a^b;
            4'h5: result=~a;
            4'h6: result=a<<b[3:0];
            4'h7: result=a>>b[3:0];
            4'h8: result=$signed(a)>>>b[3:0];
            4'h9: result=(a==b)?16'h0001:16'h0000;
            4'hA: result=($signed(a)<$signed(b))?16'h0001:16'h0000;
            4'hB: result=(a<b)?16'h0001:16'h0000;
            default: result=16'h0000;
        endcase
    end
    assign zero=(result==16'h0000);
endmodule
