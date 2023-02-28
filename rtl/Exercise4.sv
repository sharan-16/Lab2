/**
  @brief An asynchronous mux/decoder

  @input sel   input select
  @input cs    chip select

  @input alpha alpha input
  @input beta  beta input
  @input gamma gamma input

  @output out output
*/
module Exercise4 (
    input [1:0] sel,
    input cs,

    input [7:0] alpha,
    input [7:0] beta,
    input [7:0] gamma,

    output logic [7:0] out
);

always_comb begin
  if (cs == 1b'0) out = 0;
  else if (cs == 1b'1) begin

    if(sel == 2d'0) out = alpha;
    else if(sel == 2d'1) out = beta;
    else if(sel == 2d'2) out = gamma;
    else if(sel == 2d'3) out = 0;
    
  end
end

endmodule
