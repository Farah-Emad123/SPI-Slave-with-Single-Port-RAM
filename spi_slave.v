module SPI_SLAVE (

//inputs 
	input MOSI,
	input SS_n , clk ,rst,      //synch reset
	input [7:0] tx_data,
	input  tx_valid,
//outputs 
	output reg MISO,
	output reg [9:0] rx_data,
	output reg rx_valid
	);
//internel signals 
reg [2:0] CS;              //current state
reg [2:0] NS;             //next state
reg [3:0]counter ;       //to convert from s to p and vice verse //counter is 4 bit cuz of 10 is the max count 
reg flag_read_data_add; //flag
reg [9:0] register;    

parameter IDLE=3'b000;
parameter WRITE=3'b010;
parameter CHK_CMD=3'b001;
parameter READ_ADD=3'b011;
parameter READ_DATA=3'b100;

//fsm

//state memory 
always @(posedge clk ) begin
	if (~rst) 
		CS<=IDLE;
	else 
		CS<=NS;
end

//next state logic 
always @(*)begin
	case(CS)
		IDLE:
		      if(SS_n==0)
		      	NS=CHK_CMD;
		      else
		      	NS=IDLE;
		CHK_CMD:
			   if(SS_n==1)
			   	NS=IDLE;
			   else if (SS_n==0 && MOSI==0)
			   	NS=WRITE;
			   else
			   		if(flag_read_data_add==0)
			   			NS=READ_ADD;
			   		else
			   			NS=READ_DATA;

		WRITE: 
    			if (SS_n == 1)     
    				 NS = IDLE;
    			else if (counter == 10) 
    				 NS = IDLE; 
      			else               
      				 NS = WRITE;

      	READ_ADD:
      			if (SS_n==1)
      				NS=IDLE;

      			else if (counter == 10) 
    				 NS = IDLE; 
      			else               
      				 NS = READ_ADD;
      	READ_DATA:
      			if (SS_n==1)
      				NS=IDLE;

      			else if (counter == 10) 
    				 NS = IDLE; 
      			else               
      				 NS = READ_DATA;

      	default: NS = IDLE;

    endcase 

end


// output logic
always @(posedge clk) begin
    if (~rst) begin
        MISO    <= 0;
        rx_data <= 0;
        rx_valid <= 0;
        counter <= 0;
        flag_read_data_add <= 0;
        register <= 0;
    end
    else begin
        case(CS)
            IDLE: begin
                counter  <= 0;
                rx_valid <= 0;
                register <= 0;
                MISO     <= 0; 
            end

            CHK_CMD: begin
                counter <= 0; 
            end

            WRITE, READ_ADD: begin
                if (counter < 10) begin
                    register <= {register[8:0], MOSI}; 
                    counter  <= counter + 1;
                    rx_valid <= 0;
                end
                else begin
                    rx_data  <= register;
                    rx_valid <= 1;
                    counter  <= 0;
                    if (CS == READ_ADD) 
                        flag_read_data_add <= 1;
                end
            end

            READ_DATA: begin
                if (counter < 10) begin
                    register <= {register[8:0], MOSI};
                    
                    
                    if (counter >= 0 && counter <= 7) begin
                        MISO <= tx_data[7 - counter]; 
                    end else begin
                        MISO <= 0;
                    end
                    
                    counter <= counter + 1;
                    rx_valid <= 0;
                end
                else begin
                    rx_data  <= register;
                    rx_valid <= 1;
                    counter  <= 0;
                    flag_read_data_add <= 0; 
                end
            end

            default: begin
                rx_valid <= 0;
                MISO     <= 0;
            end
        endcase
    end
end

endmodule 