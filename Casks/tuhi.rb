cask "tuhi" do
  version "1.0.0"
  sha256 "ecffdf2d62b7d1351bcad3533986cad6a4c0cbade01aa767238d1e520b6fa869"

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
