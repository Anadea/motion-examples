$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

require 'bundler'
Bundler.require(:default)

Motion::Project::App.setup do |app|
  app.name = 'Motion MailCore2'
  app.vendor_project('vendor/MailCore.framework',
                     :static,
                     products: ['MailCore'],
                     headers_dir: 'Headers')
  app.libs += [
    "/usr/lib/libc++.dylib",
    "/usr/lib/libcrypto.dylib",
    "/usr/lib/libssl.dylib",
    "/usr/lib/libiconv.dylib",
    "/usr/lib/libsasl2.dylib",
    "/usr/lib/libxml2.dylib",
    "/usr/lib/libtidy.dylib"
  ]
end
