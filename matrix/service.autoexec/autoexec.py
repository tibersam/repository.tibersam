import xbmc

def autostart():
    if not xbmc.Monitor().waitForAbort(30):
        xbmc.executebuiltin('StopScript(service.lightcontroll)')
        xbmc.executebuiltin('RunScript(service.lightcontroll)')

autostart()
