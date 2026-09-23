class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790121694-g18bb0a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790121694-g18bb0a/amp-darwin-arm64"
      sha256 "9d6d979623eff08d738d0753c0a2d02ebb3c8c1efe3a37db5bc5863966dfb8d6"
    else
      url "https://static.ampcode.com/cli/0.0.1790121694-g18bb0a/amp-darwin-x64"
      sha256 "2e16cec42035fea7b2f459cb442103847f1cca377d9eb490d43707a65dcbbe6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790121694-g18bb0a/amp-linux-arm64"
      sha256 "a02d9f71aa6ef950541206d93fa68925fb5e2c77a70c5ced434e779429876cf3"
    else
      url "https://static.ampcode.com/cli/0.0.1790121694-g18bb0a/amp-linux-x64"
      sha256 "7686eaf1cad727f63fb19a129e054e286bc1db3d505cc1d269da4fc01b13bdf4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
