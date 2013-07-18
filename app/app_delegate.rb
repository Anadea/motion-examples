class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildWindow

    @imap_session = MCOIMAPSession.alloc.init
    @imap_session.setHostname('mail.gmail.com')
    @imap_session.setPort(993)
    @imap_session.setUsername('login')
    @imap_session.setPassword('password')
    @imap_session.setConnectionType(MCOConnectionTypeTLS)

    uids = MCOIndexSet.indexSetWithRange(MCORangeMake(1, 100))
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect(NSScreen.mainScreen.frame,
      styleMask: NSTitledWindowMask|NSClosableWindowMask|
                 NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end
end
