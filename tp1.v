

module TOP_SPI_tb();

    
    reg  MOSI_tb;
    reg  SS_n_tb, clk_tb, rst_tb;
    wire MISO_tb;

    TOP_SPI dut (
        .MOSI(MOSI_tb),
        .MISO(MISO_tb),
        .SS_n(SS_n_tb),
        .clk(clk_tb),
        .rst(rst_tb)
    );

    
    initial begin
        clk_tb = 0;
        forever #5 clk_tb = ~clk_tb; 
    end

    initial begin
        // 1. Reset
        rst_tb = 0; SS_n_tb = 1; MOSI_tb = 0;
        #20 rst_tb = 1; 
        
       
        #2; 

        // 2. Read Address 0
        SS_n_tb = 0; 
        MOSI_tb = 1; #10; 
        MOSI_tb = 0; #10; 
        
        MOSI_tb = 0; #80; 
        SS_n_tb = 1; 
        #20;

        // 3. Read Data
        SS_n_tb = 0;
        MOSI_tb = 1; #10; 
        MOSI_tb = 1; #10; 
        
       
        #100;
        $stop;
    end

endmodule