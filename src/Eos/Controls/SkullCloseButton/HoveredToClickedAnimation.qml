// Copyright (c) 2013-2018 LG Electronics, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

import QtQuick 2.4

SequentialAnimation {
    signal animCompleted

    // Hide eyes before the animation is played
    PropertyAction {
        target: leftEye;
        property: "visible";
        value: false
    }
    PropertyAction {
        target: rightEye;
        property: "visible";
        value: false
    }
    // Play skull explosion animation
    SkullExplosionAnimation {
        target: skullCircle
        frameDuration: root.frameDuration
    }
    ScriptAction {
        script: animCompleted()
    }
} // end of SequentialAnimation
