class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794628846-g6069ba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794628846-g6069ba/amp-darwin-arm64"
      sha256 "7f04f079f429e954e97ed1b8ccaf6a2e17132d80d38c9f2c7dc4508d89fa0782"
    else
      url "https://static.ampcode.com/cli/0.0.1794628846-g6069ba/amp-darwin-x64"
      sha256 "07d99e6fb8bd567714c4eedd8f3a9c7240716c7921bcf1ede88615c7158a2b76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794628846-g6069ba/amp-linux-arm64"
      sha256 "f73f0aeab38de6740899f84409c9bd3c1025a34d04776d45899bc67af97d2fca"
    else
      url "https://static.ampcode.com/cli/0.0.1794628846-g6069ba/amp-linux-x64"
      sha256 "4a3feea15e9148ed4883d1c4fae4ccd5f9bace43d10728dfcf21eaeee48610f9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
