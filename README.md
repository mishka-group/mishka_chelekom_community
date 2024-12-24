# Mishka Chelekom Community Edition Project

This project is the community edition of [**Mishka Chelekom**](https://github.com/mishka-group/mishka_chelekom),
integrated with its dedicated CLI tool. It serves as a platform where you can:

- Share your custom components with others.
- Use components not included in the Core, developed by the Mishka team.

## How to Get Started

No additional installations are needed! Simply:

1. Add **Mishka Chelekom** to your project.
```elixir
{:mishka_chelekom, "~> 0.0.2", only: :dev}
```
2. Run the following CLI task: `mix mishka.ui.add component_some_component_name`

## Submission and Review Process

All components submitted by developers are:

1. Reviewed by the Mishka team.
2. Upon approval, converted into JSON files for CLI compatibility.

## Project Goal

The primary goal of this project is to support a wide variety of components and
other `UI-related` elements, all built with [**Mishka Chelekom**](https://github.com/mishka-group/mishka_chelekom)
components.
