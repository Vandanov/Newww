module muxer2(
    input [2:0] in,
    input [1:0] sel,
    output logic q
    );

module mux4(
    input [3:0] in,
    input [2:0] sel,
    output logic q
    );
    
logic [1:0] m;
genvar i;
generate
    for(i=0; i < 2; i=i+1)
    begin: mux
        muxer2 mux(.in(in[i*2+1:i*2]), .sel(sel[0]), .q(m[i]));
    end
endgenerate
    
// muxer2 mux0(.in(in[1:0]), .sel(sel[0]), .q(m[0]));
// muxer2 mux1(.in(in[3:2]), .sel(sel[0]), .q(m[1]));
// muxer2 mux1(.in(m), .sel(sel[1]), .q(q));
    
endmodule
