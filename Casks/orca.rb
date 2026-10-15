cask "orca" do
  arch arm: "arm64", intel: "x64"

  version "1.4.224"
  sha256 arm:   "7382f5e0d1a7f5c8253c17c975dc781710fec67fb8cfbaf9d11c03bfc60baae1",
         intel: "55635c5c7e730685ba736acc778265e02a5c49c47896a2fb7f0836de85dfb3f6"

  url "https://github.com/stablyai/orca/releases/download/v#{version}/orca-macos-#{arch}.dmg"
  name "Orca"
  desc "IDE for orchestrating AI coding agents across terminals and worktrees"
  homepage "https://onorca.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Mirrored from stablyai/homebrew-orca (tap lacks api/cask/*.json required by mise).
  # Orca's built-in electron-updater swaps the app in-place, so brew upgrade is a
  # no-op unless --greedy is passed; bump version + SHA256 manually for fresh installs.
  auto_updates true
  conflicts_with cask: "orca@rc"
  depends_on macos: ">= :big_sur"

  app "Orca.app"

  binary "#{appdir}/Orca.app/Contents/Resources/bin/orca"

  zap trash: [
    "~/.orca",
    "~/Library/Application Support/Orca",
    "~/Library/Caches/com.stablyai.orca",
    "~/Library/Caches/com.stablyai.orca.ShipIt",
    "~/Library/HTTPStorages/com.stablyai.orca",
    "~/Library/Preferences/com.stablyai.orca.plist",
    "~/Library/Saved Application State/com.stablyai.orca.savedState",
  ]
end
