class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778458525-g13ad60"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778458525-g13ad60/amp-darwin-arm64"
      sha256 "bda2c8e4d9ebed2b638e677100bee122c0984b199f39cf8ea232464ea3b9196f"
    else
      url "https://static.ampcode.com/cli/0.0.1778458525-g13ad60/amp-darwin-x64"
      sha256 "c1bc8ab2754e119149267b5352ea45e395225b2b81547c275e8b72eab888f286"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778458525-g13ad60/amp-linux-arm64"
      sha256 "19b319e666d1349cbe2594dda01554150ae15cc0743589c797cf446bff1b39d1"
    else
      url "https://static.ampcode.com/cli/0.0.1778458525-g13ad60/amp-linux-x64"
      sha256 "8c494ac4b6a8257ce76042c86e481da3f5881be9b45813e2cee0285b5c3179de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
