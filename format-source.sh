#!/bin/sh -exuo pipefail

pushd "GCDWebServer/Core"
clang-format -style=file -i *.h *.m
popd
pushd "GCDWebServer/Requests"
clang-format -style=file -i *.h *.m
popd
pushd "GCDWebServer/Responses"
clang-format -style=file -i *.h *.m
popd
pushd "GCDWebUploader"
clang-format -style=file -i *.h *.m
popd
pushd "GCDWebDAVServer"
clang-format -style=file -i *.h *.m
popd

pushd "Frameworks"
clang-format -style=file -i *.h *.m
popd
pushd "Mac"
clang-format -style=file -i *.m
popd

swiftformat --indent 2 "iOS" "tvOS"

echo "OK"
