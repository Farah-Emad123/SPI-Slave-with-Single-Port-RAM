module RAM (
    input clk, rst,
    input rx_valid,
    input [9:0] din,     
    output reg [7:0] dout, 
    output reg tx_valid     
);

 reg [7:0] mem [255:0];
 reg [7:0] internal_reg; 


 initial begin
    mem[0] = 8'hA5; 
 end

 always @(posedge clk) begin
    if (~rst) begin
        dout  <= 0;
        tx_valid <= 0;
        internal_reg <= 0;
    end
    else begin
        if (rx_valid) begin
            case (din[9:8]) 
                2'b00: begin // Write Address
                    internal_reg <= din[7:0];
                    tx_valid <= 0;
                end
                2'b01: begin // Write Data
                    mem[internal_reg] <= din[7:0];
                    tx_valid <= 0;
                end
                2'b10: begin // Read Address (Store address for later read)
                    internal_reg <= din[7:0];
                    tx_valid <= 0;
                end
                2'b11: begin // Read Data
                    dout <= mem[internal_reg];
                    tx_valid <= 1; 
                end
            endcase
        end
        else begin 
            tx_valid <= 0; 
        end
    end 
 end 
endmodule