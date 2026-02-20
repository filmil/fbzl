# fshlib

[![publish-bcr](https://github.com/filmil/fbzl/actions/workflows/publish-bcr.yml/badge.svg)](https://github.com/filmil/fbzl/actions/workflows/publish-bcr.yml)
[![publish](https://github.com/filmil/fbzl/actions/workflows/publish.yml/badge.svg)](https://github.com/filmil/fbzl/actions/workflows/publish.yml)
[![tag-and-release](https://github.com/filmil/fbzl/actions/workflows/tag-and-release.yml/badge.svg)](https://github.com/filmil/fbzl/actions/workflows/tag-and-release.yml)
[![test](https://github.com/filmil/fbzl/actions/workflows/test.yml/badge.svg)](https://github.com/filmil/fbzl/actions/workflows/test.yml)

## Synopsis

`fshlib` is a Bazel module that provides utilities for generating Markdown
documentation from Starlark files. It includes an enhanced `bzl_library` macro
that automatically integrates with Stardoc to generate and update documentation
files alongside your Bazel rules.

This module simplifies the process of maintaining up-to-date documentation for
your Bazel libraries by automating the generation of Markdown files from
docstrings in your `.bzl` files.
