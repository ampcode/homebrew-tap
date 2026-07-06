class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783315410-g29de81"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783315410-g29de81/amp-darwin-arm64"
      sha256 "d2764513b4706cb3558852cfab18415f47e985a222a5aa15908da40f190a7f6b"
    else
      url "https://static.ampcode.com/cli/0.0.1783315410-g29de81/amp-darwin-x64"
      sha256 "d4ab995b9d1eabe76d30a6c38eb92bdfa45551ef4ffe40f20f6de41dd0722379"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783315410-g29de81/amp-linux-arm64"
      sha256 "27e907580c0f18ec05e45e4f19b2eb3a62b90897545cc59f0e2c4094ae3127a6"
    else
      url "https://static.ampcode.com/cli/0.0.1783315410-g29de81/amp-linux-x64"
      sha256 "7131301fb9b802da7ebc8606c74729809af5f42f625bd7ce82a54781a3c788ea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
