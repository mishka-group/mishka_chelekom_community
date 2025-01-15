## Components

In the community edition, when creating a **Component**, ensure it is fully isolatable or has
minimal dependencies, and can be reused in other projects.
If a component is not already available in the Core project, you can contribute by adding it.

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
