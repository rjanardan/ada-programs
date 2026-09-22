with Ada.Text_IO; use Ada.Text_IO;

procedure Hello_Ada is
   -- A small demonstration: strong typing + range check
   type Altitude_Ft is range 0 .. 60000;
   My_Alt : Altitude_Ft := 35000;
begin
   Put_Line ("Hello from Ada on macOS!");
   Put_Line ("Cruising at" & Altitude_Ft'Image (My_Alt) & " feet.");
end Hello_Ada;
