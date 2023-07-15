package com.yazantarifi.radio

import androidx.compose.ui.window.ComposeUIViewController
import platform.UIKit.UIViewController

fun TextViewComposableAlias(): UIViewController = ComposeUIViewController {
    TextViewComposable()
}
