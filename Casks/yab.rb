cask "yab" do
  version :latest
  sha256 :no_check

  url "https://yetanotherbrowser.com/dl?ref=brew"
  name "Yab"
  name "Yet Another Browser"
  desc "WebKit browser for people and their AI agents"
  homepage "https://yetanotherbrowser.com/"

  auto_updates true
  depends_on macos: :sequoia

  # The disk image holds "Open yab", an installer that carries yab.app.
  app "Open yab.app/Contents/Resources/Payload/yab.app"
  # The yab command is the app's own binary, told by YAB_CLI that it was
  # started as a command. A wrapper script, not a link: run through a link,
  # the binary wouldn't know which app it belongs to.
  command_wrapper "yab",
                  executable: "#{appdir}/yab.app/Contents/MacOS/yab",
                  env:        { "YAB_CLI" => "1" }

  uninstall launchctl: "dev.serafim.fast.mail-later",
            quit:      "dev.serafim.fast"

  zap trash: [
    "~/Library/Application Support/Fast",
    "~/Library/Application Support/Yab",
    "~/Library/Caches/dev.serafim.fast",
    "~/Library/HTTPStorages/dev.serafim.fast",
    "~/Library/HTTPStorages/dev.serafim.fast.binarycookies",
    "~/Library/Preferences/dev.serafim.fast.plist",
    "~/Library/Saved Application State/dev.serafim.fast.savedState",
    "~/Library/WebKit/dev.serafim.fast",
  ]
end
