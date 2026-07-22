cask "fazm" do
  version "2.9.77"
  sha256 "ffe42b4facb26722b5f7d826740801a502c220e976d3bcc981912976e1c57819"

  url "https://github.com/mediar-ai/fazm/releases/download/v2.9.77%2B2009077-macos/Fazm.dmg"
  name "Fazm"
  desc "Claude Code and Codex GUI for macOS with persistent sessions"
  homepage "https://fazm.ai"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Fazm.app"

  zap trash: [
    "~/Library/Application Support/com.fazm.app",
    "~/Library/Preferences/com.fazm.app.plist",
    "~/Library/Caches/com.fazm.app",
  ]
end
