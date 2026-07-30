class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785401491-g022332"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785401491-g022332/amp-darwin-arm64"
      sha256 "fc09c8c4c710f6f8af3236b6cfcf3d0126a4d41ba710128e3ec704065c709999"
    else
      url "https://static.ampcode.com/cli/0.0.1785401491-g022332/amp-darwin-x64"
      sha256 "0766ddd7c7d5c7b7a9a9555b482548b42b2037b0306f08beedacb4bab16029a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785401491-g022332/amp-linux-arm64"
      sha256 "5a30b9eb76d62921409418548a5f8df78ac0e8fe8040fe12e61d8bbf4bb02768"
    else
      url "https://static.ampcode.com/cli/0.0.1785401491-g022332/amp-linux-x64"
      sha256 "cbec84f5d22ecd4029c81dd28a403709d0c3806f04a244cac01c60f0a0a2ae7e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
