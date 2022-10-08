# Differentiation

There are many ways of representing derivatives:

$$ y = mx+c $$

$$ \frac{d}{dx}[y] = m $$

Or you could also represent them like so:

$$ f(x) = mx + c $$

$$ f'(x) = m $$

## Derivative at a point

Derivative at a point = **gradient** at a point = gradient of tangent

Positive gradient (line go up): 

$$ \frac{dy}{dx} > 0 $$

Negative gradient (line go down): 

$$ \frac{dy}{dx} < 0 $$

## Related rates of change

$$ \frac{dy}{dt} = \frac{dy}{dx} * \frac{dx}{dt} $$

Example:

$$ A = \textrm{Area of a circle} = \pi r^2 $$

Given constant rate of change of radius ($\frac{dr}{dt} = 3$), find rate of change of area when radius is at $r$

**1. Formulate equation**

$$ \frac{dA}{dt} = \frac{dA}{dr} \times \frac{dr}{dt} $$

Rate of change of area $=$ change in area with respect to radius $\times$ rate of change of radius

**2. Find derivatives**

$$ \frac{dA}{dr} = 2\pi r $$

**3. Solve for unknown**

$$ \frac{dA}{dt} = \frac{dA}{dr} \times \frac{dr}{dt} $$

$$ \frac{dA}{dt} = 2\pi r \times 3 $$

Substitute $r$ for value specified in question

## Nature of stationary points

* Determine whether a stationary point ($\frac{dy}{dx} = 0$) is:
  * Maximum point
  * Minimum point
  * Inflection point

There are two methods of finding this.

### First derivative

Finding the gradient around the stationary point

Maximum point:

|                           | $f'(x)^-$         | $f'(x)$ | $f'(x)^+$         |
|---------------------------|-------------------|---------|-------------------|
| Gradient                  | Positive gradient | 0.00    | Negative gradient |
| Direction of tangent line | /                 | -       | \                 |

Minimum point:

|                           | $f'(x)^-$         | $f'(x)$ | $f'(x)^+$         |
|---------------------------|-------------------|---------|-------------------|
| Gradient                  | Negative gradient | 0.00    | Positive gradient |
| Direction of tangent line | \                 | -       | /                 |

Inflection point:

|                           | $f'(x)^-$         | $f'(x)$ | $f'(x)^+$         |
|---------------------------|-------------------|---------|-------------------|
| Gradient                  | Negative gradient | 0.00    | Negative gradient |
| Direction of tangent line | \                 | -       | \                 |

|                           | $f'(x)^-$         | $f'(x)$ | $f'(x)^+$         |
|---------------------------|-------------------|---------|-------------------|
| Gradient                  | Positive gradient | 0.00    | Positive gradient |
| Direction of tangent line | /                 | -       | /                 |

### Second derivative

Simply find the derivative again:

$$ \frac{d}{dx}[\frac{dx}{dy}] = \frac{d^2y}{dx^2} $$

Or also written as:

$$ \frac{d}{dx}[f'(x)] = f''(x) $$

After finding second derivative at stationary point:

* If negative, then it is a maximum point
* If positive, then it is a minimum point
* If it is zero, then use first derivative test or unknown nature

## Rules of differentiation

### 1. Power rule

Bring down power, decrease power

$$ \frac{d}{dx}[x^n] = nx^{n-1} $$

### 2. Chain rule

Bring down power, decrease power, differentiate inside

$$ \frac{d}{dx}[f(x)^n] = (n)(f(x)^{n-1})(f'(x)) $$

### 3. Product rule

$$ y = uv $$

$$ \frac{dy}{dx} = u\frac{dv}{dx} + v\frac{du}{dx} $$

* Differentiate u, leave v + Differentiate v, leave u

### 4. Quotient rule

$$ y = \frac{f(x)}{g(x)} $$

$$ \frac{dy}{dx} = \frac{f'(x)g(x) - g'(x)f(x)}{g(x)^2} $$

## Trigonometric functions

* Formula sheet will be given but still

| $y$         | $\frac{dy}{dx}$    |
|-------------|--------------------|
| $sin(f(x))$ | $f'(x)cos(f(x))$   |
| $cos(f(x))$ | $-f'(x)sin(f(x))$  |
| $tan(f(x))$ | $f'(x)sec^2(f(x))$ |

## Exponential functions

| $y$        | $\frac{dy}{dx}$          |
|------------|--------------------------|
| $a^{f(x)}$ | $a^{f(x)}(f'(x))(ln(a))$ |
| $e^{f(x)}$ | $f'(x)e^{f(x)}$          |

## Logarithmic functions

| $y$              | $\frac{dy}{dx}$       |
|------------------|-----------------------|
| $\log_{a}{f(x)}$ | $\frac{f'(x)}{af(x)}$ |
| $\ln{f(x)}$      | $\frac{f'(x)}{f(x)}$  |
