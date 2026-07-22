cask "interpreter" do
  arch arm: "arm64", intel: "x64"

  version "0.2.183"
  sha256 arm: "32a34b8363992df2bf64d1c9fc6f8f662634d27ee7290da649f363ab3f6b07ae",
         intel: "907978c06598ddb38c505e7e607bb210dfe6b73b278496ff407dd766d46d02bb"

  url "https://auth.openinterpreter.com/storage/v1/object/public/workstationupdater/releases/Interpreter-#{arch}.dmg"
  name "Open Interpreter Desktop"
  desc "Desktop agent for working across documents, spreadsheets, and local files"
  homepage "https://www.openinterpreter.com/desktop"

  app "Interpreter.app"

  zap trash: [
    "~/Library/Application Support/interpreter",
    "~/Library/Preferences/interpreter.plist",
    "~/Library/Caches/interpreter",
  ]
end
