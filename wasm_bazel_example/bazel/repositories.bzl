#  Copyright 2020 Google LLC
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
)

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def tendis_wasm_example_repositories():
   # linux
   #maybe(
   #     http_archive,
   #     name = "com_wasmedge",
   #     sha256 = "6006eed4bf0f4898c3a76e685b1d7eed29c0a5a2b79461ff469490b0b1463dc8",
   #     strip_prefix = "WasmEdge-0.14.1-Linux",
   #     url = "https://github.com/WasmEdge/WasmEdge/releases/download/0.14.1/WasmEdge-0.14.1-ubuntu20.04_aarch64.tar.gz",
   #     build_file = "//bazel:wasmedge.BUILD",  # 指定自定义的 BUILD 文件
   # )
   # macos
    maybe(
        http_archive,
        name = "com_wasmedge",
        sha256 = "ee1b5ca9731fff53d28897b776e43ea7f0b443812e680d6fddc9da5a1b39cc51",
        strip_prefix = "",
        url = "https://github.com/hydai/debug_wasm_test/releases/download/0.0.1/WasmEdge-0.14.1-267-g7de287c9-Darwin.tar.gz",
        build_file = "//bazel:wasmedge.BUILD",  # 指定自定义的 BUILD 文件
    )

