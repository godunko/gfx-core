--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with Interfaces;

package GFX
  with Pure
is

   type Real is new Interfaces.IEEE_Float_32;

   type RGBA8888 is private with Preelaborable_Initialization;

   function To_RGBA (R, G, B, A : Interfaces.Unsigned_8) return RGBA8888;

   procedure From_RGBA8888
     (C : RGBA8888;
      R : out Interfaces.Unsigned_8;
      G : out Interfaces.Unsigned_8;
      B : out Interfaces.Unsigned_8;
      A : out Interfaces.Unsigned_8);

private

   type RGBA8888 is new Interfaces.Unsigned_32;

end GFX;
