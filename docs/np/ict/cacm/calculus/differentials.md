# Differentials

## What are differentials?

Finding the inverse of an implicit derivative. For example, the implicit derivative could be:

$$ \frac{dy}{dx} = 5x^2 -2x $$

When solving for a differential, there are general solutions and specific solutions, where the concept is similar to indefinite integrals and definite integrals.

### Orders

Orders of differentials refer to the degree of the derivative. For example, the equation above is a first order differential. A possible second order differential would then be

$$ \frac{d^2y}{dx^2} = 5x^2 -2x $$

### Homogenous and non-homogenous

## Separable equations

Separable equations are easier to solve. However, they must be of a certain pattern:

$$ \frac{dy}{dx} = f(x) \times g(x) $$

or

$$ \frac{dy}{dx} = \frac{f(x)}{g(x)} $$

To solve separable equations, first balance out the equation to look like:

$$ \int{f(x)}{dx} = \int{g(x)}{dy} $$

Then, solve the integral.

## Non separable equations

There are times when equation are not separable. For example, the following equation is not separable:

$$ \frac{dy}{dx} + P(x)y = Q(x) $$

We can solve the non-separable equations using this thing called an **integrating factor**. 

$$ I = e^{\int{P(X)}{dx}} $$

After finding the integrating factor, place it in the equation to solve for the general solution:

$$ Iy = \int{IQ(X)}{dx} $$
