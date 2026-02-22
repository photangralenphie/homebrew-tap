cask "mymedia" do
  version "2.1.0"
  sha256 "01506d7f85ea9eb77eccf0f98530c773117aaab76327ca68eba84ab40ed2b27f"

  url "https://github.com/photangralenphie/MyMedia/releases/download/v#{version}/MyMedia-v#{version}.dmg"
  name "MyMedia"
  desc "Media library app for browsing and watching movies and TV shows"
  homepage "https://github.com/photangralenphie/MyMedia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "MyMedia.app"

  zap trash: [
    "~/Library/Application Scripts/com.photagralenphie.MyMedia",
    "~/Library/Application Support/MyMedia",
    "~/Library/Containers/com.photagralenphie.MyMedia",
    "~/Library/Preferences/com.photagralenphie.MyMedia.plist",
  ]
end
