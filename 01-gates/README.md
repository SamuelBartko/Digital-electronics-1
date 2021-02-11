# Digital-electronics-1

https://github.com/SamuelBartko/Digital-electronics-1

# First LAB O1-gates

## De Morgan's Laws simulations

### Code
```vhdl

architecture dataflow of gates is
begin
    f_o  <= ((not b_i) and a_i) or ((not c_i) and (not b_i));
    fnand_o <= ((b_i nand b_i) nand (a_i)) nand ((c_i nand c_i) nand (b_i nand b_i));
    fnor_o <= not((b_i nor (a_i nor a_i)) nor (c_i nor b_i));

end architecture dataflow;

```
### Graphs

![Screenshot De Morgan's Law](Images/1.png)

| **c** | **b** |**a** | **f(c,b,a)** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 |

https://www.edaplayground.com/x/PjHG

## Verification of Distributive law

### Code
```vhdl

architecture dataflow of gates is
begin
    f1_o  <= ((x_i and y_i) or (x_i and z_i));
    f2_o  <= (x_i and (y_i or z_i));
    f3_o  <= ((x_i or y_i) and (x_i or z_i));
	f4_o  <= (x_i or (y_i and z_i));
end architecture dataflow;

```
### Graphs

![Screenshot Verification of Distributive law](Images/2.png)

https://www.edaplayground.com/x/b3B2