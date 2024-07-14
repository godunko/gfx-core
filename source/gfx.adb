--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body GFX is

   -------------------
   -- From_RGBA8888 --
   -------------------

   procedure From_RGBA8888
     (C : RGBA8888;
      R : out Interfaces.Unsigned_8;
      G : out Interfaces.Unsigned_8;
      B : out Interfaces.Unsigned_8;
      A : out Interfaces.Unsigned_8) is
   begin
      R := Interfaces.Unsigned_8 (C and 16#FF#);
      G := Interfaces.Unsigned_8 (Shift_Right (C, 8) and 16#FF#);
      B := Interfaces.Unsigned_8 (Shift_Right (C, 16) and 16#FF#);
      A := Interfaces.Unsigned_8 (Shift_Right (C, 24) and 16#FF#);
   end From_RGBA8888;

   -------------
   -- To_RGBA --
   -------------

   function To_RGBA (R, G, B, A : Interfaces.Unsigned_8) return RGBA8888 is
      use type Interfaces.Unsigned_32;

      RC : constant Interfaces.Unsigned_32 := Interfaces.Unsigned_32 (R);
      GC : constant Interfaces.Unsigned_32 :=
        Interfaces.Shift_Left (Interfaces.Unsigned_32 (G), 8);
      BC : constant Interfaces.Unsigned_32 :=
        Interfaces.Shift_Left (Interfaces.Unsigned_32 (B), 16);
      AC : constant Interfaces.Unsigned_32 :=
        Interfaces.Shift_Left (Interfaces.Unsigned_32 (A), 24);

   begin
      return RGBA8888 (RC or GC or BC or AC);
   end To_RGBA;

end GFX;
