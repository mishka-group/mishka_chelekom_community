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

## How Can I Contribute?

1. Clone the project.
2. Start the `community_demo` project, which is a basic Phoenix project,
by running the command: `mix setup`
3. Based on your requirements, add components in the
`community_demo/lib/community_demo_web/components/community` directory according to
the type of project you want to contribute to.
4. Respect copyright laws; avoid submitting commercial or copyrighted designs.
5. If you use free designs, include the author and link (especially if sourced from Figma) in
your pull request.
6. Finally, submit a pull request. We'll get back to you as soon as possible!

> If you are building a template or preset, make sure to use Mishka components.
> If customization is required, you can use the `class` attribute to apply custom classes.
> If the desired component does not exist, you can build it from scratch.
> Additionally, it’s recommended to create reusable components separately that can be invoked
> independently. In your pull request, please specify the dependencies of your components.
> The CLI also supports downloading and adding multiple files to the user's project simultaneously.

## Project Goal

The primary goal of this project is to support a wide variety of components and
other `UI-related` elements, all built with [**Mishka Chelekom**](https://github.com/mishka-group/mishka_chelekom)
components.
