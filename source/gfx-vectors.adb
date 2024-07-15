--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package body GFX.Vectors is

   ---------
   -- "*" --
   ---------

   function "*" (Left : GF_Vector; Right : GX_Real) return GF_Vector is
   begin
      return (X => Left.X * Right, Y => Left.Y * Right);
   end "*";

   ---------------
   -- Normalize --
   ---------------

   function Normalize (Self : GF_Vector) return GF_Vector is
      Length : constant GX_Real := Sqrt (Self.X * Self.X + Self.Y * Self.Y);

   begin
      return (X => Self.X / Length, Y => Self.Y / Length);
   end Normalize;

end GFX.Vectors;
