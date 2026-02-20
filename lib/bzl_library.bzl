load("@bazel_lib//:bzl_library.bzl", bazel_bzl_library = "bzl_library")
load("@bazel_lib//lib:write_source_files.bzl", "write_source_files")
load("@stardoc//stardoc:stardoc.bzl", "stardoc")


def bzl_library(name, srcs, **kw):
    """Declares a bzl library target, and targets used to keep updated documentation.

    Args:
      srcs: list of source files, please put the file first.
      kw: rest of the args, similar to those in `@bazel_lib//:bzl_library.bzl`.
    """
    bazel_bzl_library(
        name = name,
        srcs = srcs,
        **kw,
    )
    deps = kw.get("deps", [])
    stardoc_name = "{}_stardoc".format(name)
    stardoc(
        name = stardoc_name,
        input = srcs[0],
        out = "{}.gen.md".format(srcs[0]),
        deps = deps,
    )
    update_name = "{}_update".format(name)
    write_source_files(
        name = update_name,
        files = {
            "{}.md".format(name): ":{}".format(stardoc_name),
        },
    )

