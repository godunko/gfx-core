--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package body GFX.Points is

   ---------
   -- "+" --
   ---------

   function "+"
     (Left : GF_Point; Right : GFX.Vectors.GF_Vector) return GF_Point is
   begin
      return (X => Left.X + Right.X, Y => Left.Y + Right.Y);
   end "+";

   ---------
   -- "-" --
   ---------

   function "-"
     (Left : GF_Point; Right : GF_Point) return GFX.Vectors.GF_Vector is
   begin
      return (X => Left.X - Right.X, Y => Left.Y - Right.Y);
   end "-";

   ---------
   -- "-" --
   ---------

   function "-"
     (Left : GF_Point; Right : GFX.Vectors.GF_Vector) return GF_Point is
   begin
      return (X => Left.X - Right.X, Y => Left.Y - Right.Y);
   end "-";

end GFX.Points;
