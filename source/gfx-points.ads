--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with GFX.Vectors;

package GFX.Points
  with Pure
is

   type GF_Point is record
      X : GFX.GX_Real;
      Y : GFX.GX_Real;
   end record;

   function "+"
     (Left : GF_Point; Right : GFX.Vectors.GF_Vector) return GF_Point;

   function "-"
     (Left : GF_Point; Right : GF_Point) return GFX.Vectors.GF_Vector;

   function "-"
     (Left : GF_Point; Right : GFX.Vectors.GF_Vector) return GF_Point;

end GFX.Points;
