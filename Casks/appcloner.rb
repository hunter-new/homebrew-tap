cask "appcloner" do
  version "1.1"
  sha256 "f7ab905112c91c268afd324ad9a5185ce82a28895c0a5e41645470fb6f21dfa2"

  url "https://github.com/hunter-new/appcloner/releases/download/v#{version}/AppCloner-#{version}.dmg"
  name "AppCloner"
  desc "Create independent copies of apps to run multiple instances side by side"
  homepage "https://github.com/hunter-new/appcloner"

  depends_on macos: ">= :ventura"

  app "AppCloner.app"

  zap trash: [
    "~/Library/Preferences/local.appcloner.plist",
    "~/Library/Saved Application State/local.appcloner.savedState",
  ]

  caveats <<~EOS
    Clones are created in ~/Applications/AppClones and are not removed on uninstall.
  EOS
end
