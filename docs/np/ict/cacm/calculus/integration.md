# Integration

Integration is the reverse of differentiation. While differentiation finds the gradient of a function, integration finds the area under a function.

## Rules of integration

### Basics

Increase power, bring down power, differentiate inside

$$ \int{f(x)^m}dx = \frac{f(x)^{m+1}}{f'(x)(m+1)} + c $$

### Why do we $+ c$ ?

Since any constant is removed in differentiation, for example: 

$$ \frac{d}{dx}[3x + 5]dx = 3 $$

any constant would produce the same derivative.

$$ \frac{d}{dx}[3x + 5]dx = \frac{d}{dx}[3x + 6]dx = \frac{d}{dx}[3x + 999]dx = 3 $$

Therefore, we have to add the constant $c$ to represent an unknown constant.

### Trigonometric functions

| $y$           | $\int{y}dx$                    |
|---------------|--------------------------------|
| $sin(f(x))$   | $\frac{cos(f(x))}{f'(x)} + c$  |
| $cos(f(x))$   | $$\frac{sin(f(x))}{f'(x)} + c$ |
| $sec^2(f(x))$ | $\frac{tan(f(x))}{f'(x)} + c$  |

For other integrals, make use of trigonomic identities to simplify the integrals before integration

$$ \int{sin^2(x)}dx = \int{\frac{1}{2}(1 - cos(2x))}dx = \frac{1}{2}\int{1 - cos(2x)}dx $$

Identity: $$ cos(2x) = 1 - sin^2(x) $$ 

$$ \int{cos^2(x)}dx = \int{\frac{1}{2}(cos(2x) + 1)}dx = \frac{1}{2}\int{cos(2x) + 1}dx $$

Identity: $$ cos(2x) = 2cos^2(x) - 1 $$ 

### Exponential functions

$$ \int{e^{f(x)}}dx = \frac{e^{f(x)}}{f'(x)} + c $$

## Definite integrals

Definite integrals are the integral of a function with a specified range. They are represented like this:

$$ \int_a^b{f(x)}dx = [F(x)]_a^b = F(b) - F(a) $$ 

$$ a = \textrm{lower bound} $$

$$ b = \textrm{upper bound} $$

$a$ is usually smaller than $b$

### Finding area using definite integrals

<br/>

#### 1. Area between positive function and x axis

$$ \int_a^b{f(x)}dx $$

#### 2. Area between negative function and x axis

$$ |\int_a^b{f(x)}dx| $$

We take the absolute value as the integral of a function under the x axis is negative, but area can only be positive.

#### 3. Area with respect to y axis

Sometimes it is not possible to find the area using the x axis, or it is easier to find with respect to y axis.

In this case, we need to convert the function to represent x in terms of y.

For example:

$$ y = mx + c $$ 

will become

$$ x = \frac{y - c}{m} $$

Then, we can find the area similar to parts 1 and 2. 

$$ \int_a^b{f(y)}dy $$

#### 4. Area between 2 functions

What if we want to find the area between two curves $f(x)$$ and $g(x)$?

We can do this by taking the integral of the top function subtracted by the bottom function:

$$ \int_a^b{f(x) - g(x)}dx $$

This would always result in a positive value, even if both functions are in the negative x/y axis. 

The same can be done with respect to y:

$$ \int_a^b{f(y) - g(y)}dy $$

## Kinematics

We can use differentiation and integration to help us solve some kinematics related questions.

This is because some formulas in kinematics are related to each other:

* Displacement (distance) is $s$
* Velocity (distance over time) 

$$ v = \frac{ds}{dt} $$

* Acceleration (velocity over time) 

$$ a = \frac{dv}{dt} $$

Read more [here](https://www.intmath.com/applications-integration/1-apps-indefinite-integral.php)
