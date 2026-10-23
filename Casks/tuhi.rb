cask "tuhi" do
  version "1.0.1"
  sha256 "86bc359eabaa8174bfbc160a97d080b084e7d646735123215b6dbb84f540cbd4"

  url "https://github.com/vernonkay/tuhi/releases/download/v#{version}/tuhi_#{version}_universal.dmg"
  name "tuhi"
  desc "Fast, cross-platform text and Markdown editor that opens multi-gigabyte files"
  homepage "https://github.com/vernonkay/tuhi"

  app "tuhi.app"

  caveats <<~EOS
    tuhi is not yet notarized, so macOS Gatekeeper will block it on first launch.
    To open it the first time: right-click tuhi in Applications and choose Open,
    then confirm. Or allow it under System Settings > Privacy & Security > Open Anyway.
  EOS

  zap trash: [
    "~/Library/Application Support/com.vernonk.tuhi",
    "~/Library/Caches/com.vernonk.tuhi",
    "~/Library/Preferences/com.vernonk.tuhi.plist",
    "~/Library/Saved Application State/com.vernonk.tuhi.savedState",
  ]
end
