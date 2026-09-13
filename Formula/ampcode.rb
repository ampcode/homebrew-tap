class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789300838-gde32db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789300838-gde32db/amp-darwin-arm64"
      sha256 "ee83cd85e3501ef9932746025bea00e49dbc4b89920504547fd569fd7cfcec7d"
    else
      url "https://static.ampcode.com/cli/0.0.1789300838-gde32db/amp-darwin-x64"
      sha256 "7b92a8ed99438d7fa6a0c5fb2ec7fce3659b685786d88975a0c4d407ea444a47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789300838-gde32db/amp-linux-arm64"
      sha256 "cf1344afc4b705b1fb3fedf3b4b4f7a7fa0e1dd2fdc0b562c0624d82f3ec66d6"
    else
      url "https://static.ampcode.com/cli/0.0.1789300838-gde32db/amp-linux-x64"
      sha256 "707e7a20f201abd06020953978e47b3d4b9492cc727adc3f3fac10b889bdd0d0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
