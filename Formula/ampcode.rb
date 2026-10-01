class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790830067-gdadb68"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790830067-gdadb68/amp-darwin-arm64"
      sha256 "2e3ec7a5e0633d7236cbc43e2ef233a4c605a37a64c4bc3a2fcb61a8bfe6a4e2"
    else
      url "https://static.ampcode.com/cli/0.0.1790830067-gdadb68/amp-darwin-x64"
      sha256 "53409725705a39bac9bc0b3d6c9c1c151b9cefc28f33c25da874142a03470098"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790830067-gdadb68/amp-linux-arm64"
      sha256 "6cc1c87425d8721f2c8e4227b90ef89ecb9db0779f6757511af1c6325d5224aa"
    else
      url "https://static.ampcode.com/cli/0.0.1790830067-gdadb68/amp-linux-x64"
      sha256 "a5906567c2b43c60c2d8863ab9fc3a599122a180bd97d042bb16908e8b11765f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
