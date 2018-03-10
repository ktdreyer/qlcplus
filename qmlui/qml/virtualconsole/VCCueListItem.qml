/*
  Q Light Controller Plus
  VCCueListItem.qml

  Copyright (c) Massimo Callegari

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

import QtQuick 2.0

import org.qlcplus.classes 1.0

VCWidgetItem
{
    id: cueListRoot
    property VCCueList cueListObj: null
    clip: true

    onCueListObjChanged:
    {
        setCommonProperties(cueListObj)
    }

    ChaserWidget
    {
        id: chWidget
        //isSequence: ceContainer.isSequence
        width: cueListRoot.width
        height: cueListRoot.height
        model: cueListObj ? cueListObj.stepsList : null
        //playbackIndex: chaserEditor.playbackIndex
        //tempoType: chaserEditor.tempoType
        //isRunning: chaserEditor.previewEnabled

        //onIndexChanged: chaserEditor.playbackIndex = index
        //onStepValueChanged: chaserEditor.setStepSpeed(index, value, type)
    }
}