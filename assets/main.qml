/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

Page {
    Container {
        id: root
        topPadding: 10
        leftPadding: 10
        rightPadding: 10

        layout: DockLayout {

        }
        bottomPadding: 10.0
        function convertToCelsius(degreesF) {
            degreesF = parseInt(degreesF, 10);
            return (5 / 9) * (degreesF - 32);
        }

        ImageView {
            id: imgBackground
            imageSource: "asset:///images/background.jpg"
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill
            accessibility.name: "Background"
        }
        Container {
            verticalAlignment: VerticalAlignment.Top
            horizontalAlignment: HorizontalAlignment.Center

            Container {
                leftPadding: 10
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                rightPadding: 10.0
                bottomPadding: 20.0
                topPadding: 15.0
                TextField {
                    id: txtfahrenheit
                    hintText: "Fahrenheit Input"
                    horizontalAlignment: HorizontalAlignment.Left
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 2

                    }
                }
                Label {
                    // Localized text with the dynamic translation and locale updates support
                    id: lblcelsius
                    text: "Answer"
                    textStyle.base: SystemDefaults.TextStyles.BigText
                    horizontalAlignment: HorizontalAlignment.Right
                    textStyle.color: Color.Black
                }
            }
            Container {

                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                leftPadding: 10.0
                rightPadding: 10.0
                Button {
                    text: "Convert"
                    topMargin: 55.0
                    horizontalAlignment: HorizontalAlignment.Fill
                    onClicked: {
                        lblcelsius.text = root.convertToCelsius(txtfahrenheit.text);
                    }
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 2.0

                    }
                }

                Button {
                    text: "Close"
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1.0

                    }
                }
            }

        }

    }
}
