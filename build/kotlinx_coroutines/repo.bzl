# Copyright 2020 The Cross-Media Measurement Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Repository defs for kotlinx-coroutines."""

load("//build:versions.bzl", "KOTLINX_COROUTINES_VERSION")

_ARTIFACT_NAMES = [
    "org.jetbrains.kotlinx:kotlinx-coroutines-core",
    "org.jetbrains.kotlinx:kotlinx-coroutines-debug",
    "org.jetbrains.kotlinx:kotlinx-coroutines-guava",
    "org.jetbrains.kotlinx:kotlinx-coroutines-jdk8",
    "org.jetbrains.kotlinx:kotlinx-coroutines-reactive",
    "org.jetbrains.kotlinx:kotlinx-coroutines-test",
]

def kotlinx_coroutines_artifact_dict():
    return {name: KOTLINX_COROUTINES_VERSION for name in _ARTIFACT_NAMES}
