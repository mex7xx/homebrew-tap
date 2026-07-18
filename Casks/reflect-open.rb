cask "reflect-open" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.0"
  sha256 arm: "9f226ae33862628ee9053e124868d8e20a77317a9ad2387c85df3d45873d9abe",
         intel: "f4c45888e6ac211ecc262bab7cc434adf9ef6e9ba9ea3f18f521213c95e82308"

  url "https://github.com/team-reflect/reflect-open/releases/download/v#{version}/Reflect_#{arch}.dmg"
  name "Reflect"
  desc "Local-first Markdown note-taking app"
  homepage "https://github.com/team-reflect/reflect-open"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Reflect.app"

  zap trash: [
    "~/Library/Application Support/Reflect",
    "~/Library/Preferences/com.reflect.app.plist",
    "~/Library/Caches/com.reflect.app",
  ]
end
