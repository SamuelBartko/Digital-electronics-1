# Digital-electronics-1

https://github.com/SamuelBartko/Digital-electronics-1

# Seventh LAB 06-ffs

## 1. Characteristic equations and tables for D, JK, T flip-flops.

### Equasion for D 
<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{align*}&space;q_{n&plus;1}&space;=&space;&~&space;d&space;&\&space;\end{align*}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{align*}&space;q_{n&plus;1}&space;=&space;&~&space;d&space;&\&space;\end{align*}" title="\begin{align*} q_{n+1} = &~ d &\ \end{align*}" /></a>

  | **D** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | No change |
   | 0 | 1 | 0 | Invert (Toggle) |
   | 1 | 0 | 1 | Invert (Toggle) |
   | 1 | 1 | 1 | No change |

### Equasion for JK
<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{align*}&space;q_{n&plus;1}&space;=&~&space;j\overline{q}{n}\&space;&plus;\overline{k}q_{n}&space;&\&space;\end{align*}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{align*}&space;q_{n&plus;1}&space;=&~&space;j\overline{q}{n}\&space;&plus;\overline{k}q_{n}&space;&\&space;\end{align*}" title="\begin{align*} q_{n+1} =&~ j\overline{q}{n}\ +\overline{k}q_{n} &\ \end{align*}" /></a>

   | **J** | **K** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | 0 | No change |
   | 0 | 0 | 1 | 1 | No change |
   | 0 | 1 | 0 | 0 | Reset |
   | 0 | 1 | 1 | 0 | Reset |
   | 1 | 0 | 0 | 1 | Set |
   | 1 | 0 | 1 | 1 | Set |
   | 1 | 1 | 0 | 1 | Toggle |
   | 1 | 1 | 1 | 0 | Toggle |

### Equasion for T
<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{align*}&space;q_{n&plus;1}&space;=&space;&~&space;t\overline{q}_{n}\&space;&plus;\overline{t}q_{n}&space;\end{align*}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{align*}&space;q_{n&plus;1}&space;=&space;&~&space;t\overline{q}_{n}\&space;&plus;\overline{t}q_{n}&space;\end{align*}" title="\begin{align*} q_{n+1} = &~ t\overline{q}_{n}\ +\overline{t}q_{n} \end{align*}" /></a>

   | **T** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | No change |
   | 0 | 1 | 1 | No change |
   | 1 | 0 | 1 | Invert (Toggle) |
   | 1 | 1 | 0 | Invert (Toggle) |

## 2. D latch

### Code of the process `p_d_latch`

```vhdl

    p_d_latch : process (d, arst, en)
    begin

        if (arst = '1') then
            q     <= '0';
            q_bar <= '1';
        elsif (en = '1') then
            q <= d;
            q_bar <= not d;
        end if;
    
     end process p_d_latch;

```

### Code of the process `tb_d_latch`

```vhdl



```

![Graph](Images/1.png)

## 3. Flip-flops

### Code of the process `p_d_ff_arst`

```vhdl



```

### Code of the process `p_d_ff_rst`

```vhdl



```

### Code of the process `p_jk_ff_rst`

```vhdl



```

### Code of the process `p_t_ff_rst`

```vhdl



```

![Graph](Images/2.png)

## 4. Shift register

### Code of the process `top`

```vhdl



```

![Scheme](Images/scheme.png)