module tb_alu16;
    reg [15:0] a,b;
    reg [3:0] opcode;
    wire [15:0] result;
    wire zero,carry;
    alu16 dut(.a(a),.b(b),.opcode(opcode),.result(result),.zero(zero),.carry(carry));
    initial begin
        a=7; b=3; opcode=0; #1;
        if (result!==10 || carry!==0) $fatal(1,"ADD failed");
        opcode=1; #1;
        if (result!==4) $fatal(1,"SUB failed");
        opcode=2; #1;
        if (result!==(a&b)) $fatal(1,"AND failed");
        a=16'hffff; b=1; opcode=0; #1;
        if (result!==0 || carry!==1 || zero!==1) $fatal(1,"carry/zero failed");
        a=16'h8000; b=1; opcode=8; #1;
        if (result!==16'hc000) $fatal(1,"arithmetic shift failed");
        $display("Directed ALU tests passed"); $finish;
    end
endmodule
