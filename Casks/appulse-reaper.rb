cask "appulse-reaper" do
  version "0.2.0"
  sha256 "f8e79f37af26253a6bebdd108f3bbe44f35a13e4164022fac7843bc698931640"

  url "https://github.com/AppulseSoftware/reaper/releases/download/v#{version}/Reaper-#{version}.zip"
  name "Reaper"
  desc "Menu bar monitor for AI agent processes (CPU and memory)"
  homepage "https://github.com/AppulseSoftware/reaper"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Reaper.app"

  zap trash: [
    "~/Library/Application Support/Reaper",
    "~/Library/Caches/nl.appulse.reaper",
    "~/Library/Preferences/nl.appulse.reaper.plist",
    "~/Library/Saved Application State/nl.appulse.reaper.savedState",
    "~/Library/WebKit/nl.appulse.reaper",
  ]
end
