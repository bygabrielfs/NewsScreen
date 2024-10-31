//otimização de memoria, gerenciar ciclo de vida da UI

package com.app.gabrielfs.newsscreen

import kotlinx.coroutines.CoroutineScope

expect open class BaseViewModel() {

    val scope: CoroutineScope


}