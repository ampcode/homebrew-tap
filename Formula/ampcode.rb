class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780391988-g4f09f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780391988-g4f09f3/amp-darwin-arm64"
      sha256 "ecfb036beec484ed881faa6f01b84192c100be18ab9bad152f7aa19c33d636f6"
    else
      url "https://static.ampcode.com/cli/0.0.1780391988-g4f09f3/amp-darwin-x64"
      sha256 "3f192db34f6b85df5f35122b42da8f3e2219df971c6e7462f70a2159aeec0394"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780391988-g4f09f3/amp-linux-arm64"
      sha256 "192db046eed4a58489e12868e667bc5b3fce7550c41cefb3edab33ba2b0b6073"
    else
      url "https://static.ampcode.com/cli/0.0.1780391988-g4f09f3/amp-linux-x64"
      sha256 "683e2bbb3a0df06a94c16d2c291e775caf5d8120d384b079d7037864e78ae119"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
