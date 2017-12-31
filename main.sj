include "lib/ui/ui.sj"

include "init.sj"
include "menuController.sj"
include "fieldController.sj"
include "forestController.sj"
include "fieldScene.sj"
include "forestScene.sj"
include "menuScene.sj"
include "nauScene3dElement.sj"
include "leafPanel.sj"
include "peoplePanel.sj"
include "personElement.sj"
include "mainPanel.sj"

root = menuElement

log.minLevel = logLevel.trace

// mainLoop_showFPS = true
// windowRender_disableVSync()

runLoop()