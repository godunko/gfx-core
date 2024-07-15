--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package GFX.Vectors
  with Pure
is

   type GF_Vector is record
      X : GFX.GX_Real;
      Y : GFX.GX_Real;
   end record;

   function "*" (Left : GF_Vector; Right : GX_Real) return GF_Vector;

   function Normalize (Self : GF_Vector) return GF_Vector;

end GFX.Vectors;
