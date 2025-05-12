
// Project-independent SandPiper header file.

`ifndef SANDPIPER_VH
`define SANDPIPER_VH


// Note, these have no SP prefix, so collisions are possible.
     

`ifdef WHEN
   // Make sure user definition does not collide.
   !!!ERROR: WHEN macro already defined
`else
   `ifdef SP_PHYS
      // Phys compilation disabled X-injection.
      `define WHEN(valid_sig)
   `else
      // Inject X.
      `define WHEN(valid_sig) !valid_sig ? 'x :
   `endif
`endif


// SandPiper does not generate set/reset flops.  Reset is implemented as combinational
// logic, and it is up to synthesis to infer set/reset flops when possible.
//`ifdef RESET
//   // Make sure user definition does not collide.
//   !!!ERROR: RESET macro already defined
//`else
//   `define RESET(i, reset) ((reset) ? '0 : i)
//`endif
//
//`ifdef SET
//   // Make sure user definition does not collide.
//   !!!ERROR: SET macro already defined
//`else
//   `define SET(i, set) ((set) ? '1 : i)
//`endif

// Since SandPiper required use of all signals, this is useful to create a
// bogus use and keep SandPiper happy when a signal, by intent, has no uses.
`define BOGUS_USE(ignore)

`endif  // SANDPIPER_VH
