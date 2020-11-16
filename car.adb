-- MIT License

-- Copyright (c) 2020 Jean-Jacques François Reibel

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

with Ada.Text_IO; use Ada.Text_IO;
procedure Car is

--class
type Car is tagged
      record
         wheels : Integer;
         doors : Integer;
         cylinders : Integer;
      end record;
-- functions      
--prior to Ada 2012, passed arguments could not be written to
--that would defeat the purpose of writing functions for records
procedure addWheels(myCar : in out Car; wheelsIn : Integer)
is
begin
   myCar.wheels := myCar.wheels + wheelsIn;
end addWheels; 

procedure addDoors(myCar : in out Car; doorsIn : Integer)
is
begin
   myCar.doors := myCar.doors + doorsIn;
end addDoors; 

procedure addCylinders(myCar : in out Car; cylindersIn : Integer)
is
begin
   myCar.cylinders := myCar.cylinders + cylindersIn;
end addCylinders; 

procedure deleteWheels(myCar : in out Car; wheelsIn : Integer)
is
begin
   myCar.wheels := myCar.wheels - wheelsIn;
end deleteWheels; 

procedure deleteDoors(myCar : in out Car; doorsIn : Integer)
is
begin
   myCar.doors := myCar.doors - doorsIn;
end deleteDoors; 

procedure deleteCylinders(myCar : in out Car; cylindersIn : Integer)
is
begin
   myCar.cylinders := myCar.cylinders - cylindersIn;
end deleteCylinders;

--main program block
begin
  Put_Line("Creating car.");
  declare
    subaru : Car;
  begin
    subaru.wheels := 4;
    subaru.doors := 4;
    subaru.cylinders := 4;
    Put("Wheel check: ");
    Put(Integer'Image(subaru.wheels));
    New_Line;
    Put("Door check: ");
    Put(Integer'Image(subaru.doors));
    New_Line;
    Put("Cylinder check: ");
    Put(Integer'Image(subaru.cylinders));
    New_Line;
    New_Line;
    Put_Line("Adding wheel directly to car object.");
    subaru.wheels := subaru.wheels + 1;
    Put("Wheel check: ");
    Put(Integer'Image(subaru.wheels));
    New_Line;
    Put("Door check: ");
    Put(Integer'Image(subaru.doors));
    New_Line;
    Put("Cylinder check: ");
    Put(Integer'Image(subaru.cylinders));
    New_Line;
    New_Line;
    Put_Line("Removing wheel using object method.");
    deleteWheels(subaru, 1);
    Put("Wheel check: ");
    Put(Integer'Image(subaru.wheels));
    New_Line;
    Put("Door check: ");
    Put(Integer'Image(subaru.doors));
    New_Line;
    Put("Cylinder check: ");
    Put(Integer'Image(subaru.cylinders));
    New_Line;

  end;
end Car;
