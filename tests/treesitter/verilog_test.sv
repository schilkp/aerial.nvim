module test_mod #(
    parameter logic WIDTH = '0
) (
    input logic clk_i,
    input logic rst_ni
);

  logic clk2;
  always_comb begin
    clk2 = clk_i;
  end


  logic q;
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (~rst_ni) begin
      q <= 1'b1;
    end else begin
      q <= 1'b0;
    end
  end

  logic l;
  always_latch @(clk_i or rst_ni) begin
    if (~rst_ni) begin
      l <= 1'b1;
    end else begin
      l <= 1'b0;
    end
  end

  initial begin
  end

  task automatic i2c_eeprom_preload(string image);
  endtask

  function automatic logic [WIDTH-1:0] do_smth();
  endfunction

  cva6 #(
      .clk_i (clk_i),
      .rst_ni(rst_ni),
  ) core ();

endmodule

package test_pkg;

  task automatic hello_world(string str);
  endtask

endpackage
