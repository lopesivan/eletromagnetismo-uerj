In Maple you can treat the 2-D vector as $(x,y)$ and take the polar-angle (argument) with the two-argument form of **`arctan`**:

```maple
# load nothing special; just use arctan(y,x)

r_ := <2, 6>;                  # your vector  (x = 2, y = 6)

theta := arctan(r_[2], r_[1]); # arctan(y , x)  →  exact angle
                               # here: arctan(3)
evalf(theta);                  # ≈ 1.249045772  (radians)

# if you prefer degrees:
evalf(convert(theta, degrees));     # ≈ 71.56505118°
```

A couple of alternatives you may find handy:

```maple
with(VectorCalculus):

theta2 := AngleBetween(r_, <1,0>);  # angle between r_ and the x-axis
                                    # same result as above
```

or, viewing the pair $(x,y)$ as a complex number $x + y\,\mathrm{i}$:

```maple
theta3 := argument(r_[1] + r_[2]*I);  # argument of the complex number
```

All three commands return the same argument $\theta = \arctan(3)$.

