# lambdaisland/jbox2d

This is a fork of the excellent jbox2d physics engine, meant as the basis for
cljbox2d, a Clojure API to jbox2d.

- Use `double`s instead of `float`s. It's a 64bit world now, and Clojure
  generally sticks to doubles as well.
- Implement some Clojure interfaces for nicer interop
- Upgrade dependencies where possible

Implemented interfaces:

- `Vec2` implements `IIndexed`, so you can destructure them 
- `Body`, `Fixture`, and `Joint` all implement `IAtom` and `IDeref`, to provide
  easy access to the user data. Note that even though this implement `IAtom`,
  calling `swap!` on these objects does not provide any concurrency guarantees.

Not all sub-projects are built, we currently release these libraries to Clojars:

- `lambdaisland/jbox2d`
- `lambdaisland/jbox2d-serialization`
- `lambdaisland/jbox2d-testbed`
- `lambdaisland/jbox2d-testbed-jogl`

For versions we stick to the scheme `2.3.1-<number of git commits>`.

------------------------------

# Original jbox2d README

**Please see the [project's BountySource page](https://www.bountysource.com/teams/jbox2d) to vote on issues that matter to you.**  Commenting/voting on issues helps me prioritize the small amount of time I have to maintain this library :)

JBox2d is a Java port of the C++ physics engines [LiquidFun](http://google.github.io/liquidfun/) and [Box2d](http://box2d.org).

If you're looking for *help*, see the [wiki](https://github.com/jbox2d/jbox2d/wiki) or come visit us at the [Java Box2d subforum](http://box2d.org/forum/viewforum.php?f=9).  Please post bugs here on the [issues](https://github.com/dmurph/jbox2d/issues) page.

If you're planning on maintaining/customizing your *own copy* of the code, please join our [group](http://groups.google.com/group/jbox2d-announce) so we can keep you updated.

If you're looking to deploy on the web, see [PlayN](https://code.google.com/p/playn/), which compiles JBox2d through GWT so it runs in the browser.  The JBox2d library has GWT support out of the box.   Also, [TeaVM](http://teavm.org/) support jbox2d in the browser as well.


If you've downloaded this as an archive, you should find the built java jars in the 'target' directories of each project.

======

jbox2d-library - this is the main physics library.  The only dependency is the SLF4J logging library.

jbox2d-serialization - this adds serialization tools.  Requires google's protocol buffer library installed to fully build (http://code.google.com/p/protobuf/), but this is optional, as the generated sources are included.

jbox2d-testbed - A simple framework for creating and running physics tests.

jbox2d-testbed-jogl - The testbed with OpenGL rendering.

jbox2d-jni-broadphase - Experiment with moving parts of the engine to C++.  Not faster.
